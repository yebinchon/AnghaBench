
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_single {int exponent; scalar_t__ sign; int significand; } ;
typedef int s32 ;


 int FPSCR_IDC ;
 int FPSCR_IOC ;
 int FPSCR_IXC ;
 int FPSCR_RMODE_MASK ;
 int FPSCR_ROUND_MINUSINF ;
 int FPSCR_ROUND_NEAREST ;
 int FPSCR_ROUND_PLUSINF ;
 int FPSCR_ROUND_TOZERO ;
 int VFP_DENORMAL ;
 int VFP_NAN ;
 int pr_debug (char*,int,int,int) ;
 int vfp_put_float (int ,int) ;
 int vfp_single_dump (char*,struct vfp_single*) ;
 int vfp_single_type (struct vfp_single*) ;
 int vfp_single_unpack (struct vfp_single*,int ) ;

__attribute__((used)) static u32 vfp_single_ftosi(int sd, int unused, s32 m, u32 fpscr)
{
 struct vfp_single vsm;
 u32 d, exceptions = 0;
 int rmode = fpscr & FPSCR_RMODE_MASK;
 int tm;

 vfp_single_unpack(&vsm, m);
 vfp_single_dump("VSM", &vsm);




 tm = vfp_single_type(&vsm);
 if (vfp_single_type(&vsm) & VFP_DENORMAL)
  exceptions |= FPSCR_IDC;

 if (tm & VFP_NAN) {
  d = 0;
  exceptions |= FPSCR_IOC;
 } else if (vsm.exponent >= 127 + 32) {



  d = 0x7fffffff;
  if (vsm.sign)
   d = ~d;
  exceptions |= FPSCR_IOC;
 } else if (vsm.exponent >= 127 - 1) {
  int shift = 127 + 31 - vsm.exponent;
  u32 rem, incr = 0;


  d = (vsm.significand << 1) >> shift;
  rem = vsm.significand << (33 - shift);

  if (rmode == FPSCR_ROUND_NEAREST) {
   incr = 0x80000000;
   if ((d & 1) == 0)
    incr -= 1;
  } else if (rmode == FPSCR_ROUND_TOZERO) {
   incr = 0;
  } else if ((rmode == FPSCR_ROUND_PLUSINF) ^ (vsm.sign != 0)) {
   incr = ~0;
  }

  if ((rem + incr) < rem && d < 0xffffffff)
   d += 1;
  if (d > 0x7fffffff + (vsm.sign != 0)) {
   d = 0x7fffffff + (vsm.sign != 0);
   exceptions |= FPSCR_IOC;
  } else if (rem)
   exceptions |= FPSCR_IXC;

  if (vsm.sign)
   d = -d;
 } else {
  d = 0;
  if (vsm.exponent | vsm.significand) {
   exceptions |= FPSCR_IXC;
   if (rmode == FPSCR_ROUND_PLUSINF && vsm.sign == 0)
    d = 1;
   else if (rmode == FPSCR_ROUND_MINUSINF && vsm.sign)
    d = -1;
  }
 }

 pr_debug("VFP: ftosi: d(s%d)=%08x exceptions=%08x\n", sd, d, exceptions);

 vfp_put_float((s32)d, sd);

 return exceptions;
}
