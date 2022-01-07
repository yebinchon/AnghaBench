
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_single {scalar_t__ exponent; scalar_t__ significand; } ;
typedef int s32 ;


 int pr_debug (char*,int,int ) ;
 int vfp_get_float (int) ;
 int vfp_single_add (struct vfp_single*,struct vfp_single*,struct vfp_single*,int ) ;
 int vfp_single_normalise_denormal (struct vfp_single*) ;
 int vfp_single_normaliseround (int,struct vfp_single*,int ,int ,char*) ;
 int vfp_single_unpack (struct vfp_single*,int ) ;

__attribute__((used)) static u32 vfp_single_fadd(int sd, int sn, s32 m, u32 fpscr)
{
 struct vfp_single vsd, vsn, vsm;
 u32 exceptions;
 s32 n = vfp_get_float(sn);

 pr_debug("VFP: s%u = %08x\n", sn, n);




 vfp_single_unpack(&vsn, n);
 if (vsn.exponent == 0 && vsn.significand)
  vfp_single_normalise_denormal(&vsn);

 vfp_single_unpack(&vsm, m);
 if (vsm.exponent == 0 && vsm.significand)
  vfp_single_normalise_denormal(&vsm);

 exceptions = vfp_single_add(&vsd, &vsn, &vsm, fpscr);

 return vfp_single_normaliseround(sd, &vsd, fpscr, exceptions, "fadd");
}
