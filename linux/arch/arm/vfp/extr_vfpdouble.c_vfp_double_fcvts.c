
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_single {int exponent; int significand; int sign; } ;
struct vfp_double {int exponent; int significand; int sign; } ;


 int FPSCR_IOC ;
 int VFP_DENORMAL ;
 int VFP_INFINITY ;
 int VFP_NAN ;
 int VFP_QNAN ;
 int VFP_SINGLE_SIGNIFICAND_QNAN ;
 int VFP_SNAN ;
 int VFP_ZERO ;
 int vfp_double_normalise_denormal (struct vfp_double*) ;
 int vfp_double_type (struct vfp_double*) ;
 int vfp_double_unpack (struct vfp_double*,int ) ;
 int vfp_get_double (int) ;
 int vfp_hi64to32jamming (int ) ;
 int vfp_put_float (int ,int) ;
 int vfp_single_normaliseround (int,struct vfp_single*,int ,int ,char*) ;
 int vfp_single_pack (struct vfp_single*) ;

__attribute__((used)) static u32 vfp_double_fcvts(int sd, int unused, int dm, u32 fpscr)
{
 struct vfp_double vdm;
 struct vfp_single vsd;
 int tm;
 u32 exceptions = 0;

 vfp_double_unpack(&vdm, vfp_get_double(dm));

 tm = vfp_double_type(&vdm);




 if (tm == VFP_SNAN)
  exceptions = FPSCR_IOC;

 if (tm & VFP_DENORMAL)
  vfp_double_normalise_denormal(&vdm);

 vsd.sign = vdm.sign;
 vsd.significand = vfp_hi64to32jamming(vdm.significand);




 if (tm & (VFP_INFINITY|VFP_NAN)) {
  vsd.exponent = 255;
  if (tm == VFP_QNAN)
   vsd.significand |= VFP_SINGLE_SIGNIFICAND_QNAN;
  goto pack_nan;
 } else if (tm & VFP_ZERO)
  vsd.exponent = 0;
 else
  vsd.exponent = vdm.exponent - (1023 - 127);

 return vfp_single_normaliseround(sd, &vsd, fpscr, exceptions, "fcvts");

 pack_nan:
 vfp_put_float(vfp_single_pack(&vsd), sd);
 return exceptions;
}
