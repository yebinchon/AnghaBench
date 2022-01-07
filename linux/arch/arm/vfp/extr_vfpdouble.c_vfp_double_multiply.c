
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_double {int exponent; int sign; int significand; } ;


 int FPSCR_IOC ;
 int pr_debug (char*) ;
 struct vfp_double vfp_double_default_qnan ;
 int vfp_double_dump (char*,struct vfp_double*) ;
 int vfp_hi64multiply64 (int,int) ;
 int vfp_propagate_nan (struct vfp_double*,struct vfp_double*,struct vfp_double*,int ) ;

__attribute__((used)) static u32
vfp_double_multiply(struct vfp_double *vdd, struct vfp_double *vdn,
      struct vfp_double *vdm, u32 fpscr)
{
 vfp_double_dump("VDN", vdn);
 vfp_double_dump("VDM", vdm);






 if (vdn->exponent < vdm->exponent) {
  struct vfp_double *t = vdn;
  vdn = vdm;
  vdm = t;
  pr_debug("VFP: swapping M <-> N\n");
 }

 vdd->sign = vdn->sign ^ vdm->sign;




 if (vdn->exponent == 2047) {
  if (vdn->significand || (vdm->exponent == 2047 && vdm->significand))
   return vfp_propagate_nan(vdd, vdn, vdm, fpscr);
  if ((vdm->exponent | vdm->significand) == 0) {
   *vdd = vfp_double_default_qnan;
   return FPSCR_IOC;
  }
  vdd->exponent = vdn->exponent;
  vdd->significand = 0;
  return 0;
 }





 if ((vdm->exponent | vdm->significand) == 0) {
  vdd->exponent = 0;
  vdd->significand = 0;
  return 0;
 }






 vdd->exponent = vdn->exponent + vdm->exponent - 1023 + 2;
 vdd->significand = vfp_hi64multiply64(vdn->significand, vdm->significand);

 vfp_double_dump("VDD", vdd);
 return 0;
}
