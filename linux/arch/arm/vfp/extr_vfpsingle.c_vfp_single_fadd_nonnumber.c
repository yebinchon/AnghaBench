
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_single {int sign; } ;


 int FPSCR_IOC ;
 int VFP_INFINITY ;
 int VFP_NUMBER ;
 int vfp_propagate_nan (struct vfp_single*,struct vfp_single*,struct vfp_single*,int ) ;
 struct vfp_single vfp_single_default_qnan ;
 int vfp_single_type (struct vfp_single*) ;

__attribute__((used)) static u32
vfp_single_fadd_nonnumber(struct vfp_single *vsd, struct vfp_single *vsn,
     struct vfp_single *vsm, u32 fpscr)
{
 struct vfp_single *vsp;
 u32 exceptions = 0;
 int tn, tm;

 tn = vfp_single_type(vsn);
 tm = vfp_single_type(vsm);

 if (tn & tm & VFP_INFINITY) {



  if (vsn->sign ^ vsm->sign) {



   exceptions = FPSCR_IOC;
   vsp = &vfp_single_default_qnan;
  } else {



   vsp = vsn;
  }
 } else if (tn & VFP_INFINITY && tm & VFP_NUMBER) {



  vsp = vsn;
 } else {



  return vfp_propagate_nan(vsd, vsn, vsm, fpscr);
 }
 *vsd = *vsp;
 return exceptions;
}
