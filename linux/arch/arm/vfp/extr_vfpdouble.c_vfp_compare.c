
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s64 ;


 int FPSCR_C ;
 int FPSCR_IOC ;
 int FPSCR_N ;
 int FPSCR_V ;
 int FPSCR_Z ;
 int VFP_DOUBLE_MANTISSA_BITS ;
 scalar_t__ vfp_double_packed_abs (int) ;
 int vfp_double_packed_exponent (int) ;
 unsigned long long vfp_double_packed_mantissa (int) ;
 scalar_t__ vfp_double_packed_sign (int) ;
 int vfp_get_double (int) ;

__attribute__((used)) static u32 vfp_compare(int dd, int signal_on_qnan, int dm, u32 fpscr)
{
 s64 d, m;
 u32 ret = 0;

 m = vfp_get_double(dm);
 if (vfp_double_packed_exponent(m) == 2047 && vfp_double_packed_mantissa(m)) {
  ret |= FPSCR_C | FPSCR_V;
  if (signal_on_qnan || !(vfp_double_packed_mantissa(m) & (1ULL << (VFP_DOUBLE_MANTISSA_BITS - 1))))



   ret |= FPSCR_IOC;
 }

 d = vfp_get_double(dd);
 if (vfp_double_packed_exponent(d) == 2047 && vfp_double_packed_mantissa(d)) {
  ret |= FPSCR_C | FPSCR_V;
  if (signal_on_qnan || !(vfp_double_packed_mantissa(d) & (1ULL << (VFP_DOUBLE_MANTISSA_BITS - 1))))



   ret |= FPSCR_IOC;
 }

 if (ret == 0) {
  if (d == m || vfp_double_packed_abs(d | m) == 0) {



   ret |= FPSCR_Z | FPSCR_C;
  } else if (vfp_double_packed_sign(d ^ m)) {



   if (vfp_double_packed_sign(d))



    ret |= FPSCR_N;
   else



    ret |= FPSCR_C;
  } else if ((vfp_double_packed_sign(d) != 0) ^ (d < m)) {



   ret |= FPSCR_N;
  } else if ((vfp_double_packed_sign(d) != 0) ^ (d > m)) {



   ret |= FPSCR_C;
  }
 }

 return ret;
}
