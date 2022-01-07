
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int FPSCR_C ;
 int FPSCR_IOC ;
 int FPSCR_N ;
 int FPSCR_V ;
 int FPSCR_Z ;
 int VFP_SINGLE_MANTISSA_BITS ;
 int vfp_get_float (int) ;
 scalar_t__ vfp_single_packed_abs (int) ;
 int vfp_single_packed_exponent (int) ;
 int vfp_single_packed_mantissa (int) ;
 scalar_t__ vfp_single_packed_sign (int) ;

__attribute__((used)) static u32 vfp_compare(int sd, int signal_on_qnan, s32 m, u32 fpscr)
{
 s32 d;
 u32 ret = 0;

 d = vfp_get_float(sd);
 if (vfp_single_packed_exponent(m) == 255 && vfp_single_packed_mantissa(m)) {
  ret |= FPSCR_C | FPSCR_V;
  if (signal_on_qnan || !(vfp_single_packed_mantissa(m) & (1 << (VFP_SINGLE_MANTISSA_BITS - 1))))



   ret |= FPSCR_IOC;
 }

 if (vfp_single_packed_exponent(d) == 255 && vfp_single_packed_mantissa(d)) {
  ret |= FPSCR_C | FPSCR_V;
  if (signal_on_qnan || !(vfp_single_packed_mantissa(d) & (1 << (VFP_SINGLE_MANTISSA_BITS - 1))))



   ret |= FPSCR_IOC;
 }

 if (ret == 0) {
  if (d == m || vfp_single_packed_abs(d | m) == 0) {



   ret |= FPSCR_Z | FPSCR_C;
  } else if (vfp_single_packed_sign(d ^ m)) {



   if (vfp_single_packed_sign(d))



    ret |= FPSCR_N;
   else



    ret |= FPSCR_C;
  } else if ((vfp_single_packed_sign(d) != 0) ^ (d < m)) {



   ret |= FPSCR_N;
  } else if ((vfp_single_packed_sign(d) != 0) ^ (d > m)) {



   ret |= FPSCR_C;
  }
 }
 return ret;
}
