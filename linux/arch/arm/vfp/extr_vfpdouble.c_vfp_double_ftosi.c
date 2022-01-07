
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vfp_double {int exponent; scalar_t__ sign; int significand; } ;
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
 int vfp_double_dump (char*,struct vfp_double*) ;
 int vfp_double_type (struct vfp_double*) ;
 int vfp_double_unpack (struct vfp_double*,int ) ;
 int vfp_get_double (int) ;
 int vfp_put_float (int ,int) ;

__attribute__((used)) static u32 vfp_double_ftosi(int sd, int unused, int dm, u32 fpscr)
{
 struct vfp_double vdm;
 u32 d, exceptions = 0;
 int rmode = fpscr & FPSCR_RMODE_MASK;
 int tm;

 vfp_double_unpack(&vdm, vfp_get_double(dm));
 vfp_double_dump("VDM", &vdm);




 tm = vfp_double_type(&vdm);
 if (tm & VFP_DENORMAL)
  exceptions |= FPSCR_IDC;

 if (tm & VFP_NAN) {
  d = 0;
  exceptions |= FPSCR_IOC;
 } else if (vdm.exponent >= 1023 + 32) {
  d = 0x7fffffff;
  if (vdm.sign)
   d = ~d;
  exceptions |= FPSCR_IOC;
 } else if (vdm.exponent >= 1023 - 1) {
  int shift = 1023 + 63 - vdm.exponent;
  u64 rem, incr = 0;

  d = (vdm.significand << 1) >> shift;
  rem = vdm.significand << (65 - shift);

  if (rmode == FPSCR_ROUND_NEAREST) {
   incr = 0x8000000000000000ULL;
   if ((d & 1) == 0)
    incr -= 1;
  } else if (rmode == FPSCR_ROUND_TOZERO) {
   incr = 0;
  } else if ((rmode == FPSCR_ROUND_PLUSINF) ^ (vdm.sign != 0)) {
   incr = ~0ULL;
  }

  if ((rem + incr) < rem && d < 0xffffffff)
   d += 1;
  if (d > 0x7fffffff + (vdm.sign != 0)) {
   d = 0x7fffffff + (vdm.sign != 0);
   exceptions |= FPSCR_IOC;
  } else if (rem)
   exceptions |= FPSCR_IXC;

  if (vdm.sign)
   d = -d;
 } else {
  d = 0;
  if (vdm.exponent | vdm.significand) {
   exceptions |= FPSCR_IXC;
   if (rmode == FPSCR_ROUND_PLUSINF && vdm.sign == 0)
    d = 1;
   else if (rmode == FPSCR_ROUND_MINUSINF && vdm.sign)
    d = -1;
  }
 }

 pr_debug("VFP: ftosi: d(s%d)=%08x exceptions=%08x\n", sd, d, exceptions);

 vfp_put_float((s32)d, sd);

 return exceptions;
}
