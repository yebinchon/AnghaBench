
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_double {int significand; } ;


 int FPSCR_DEFAULT_NAN ;
 int FPSCR_IOC ;
 int VFP_DOUBLE_SIGNIFICAND_QNAN ;
 int VFP_NAN_FLAG ;
 int VFP_QNAN ;
 int VFP_SNAN ;
 struct vfp_double vfp_double_default_qnan ;
 int vfp_double_type (struct vfp_double*) ;

__attribute__((used)) static u32
vfp_propagate_nan(struct vfp_double *vdd, struct vfp_double *vdn,
    struct vfp_double *vdm, u32 fpscr)
{
 struct vfp_double *nan;
 int tn, tm = 0;

 tn = vfp_double_type(vdn);

 if (vdm)
  tm = vfp_double_type(vdm);

 if (fpscr & FPSCR_DEFAULT_NAN)



  nan = &vfp_double_default_qnan;
 else {





  if (tn == VFP_SNAN || (tm != VFP_SNAN && tn == VFP_QNAN))
   nan = vdn;
  else
   nan = vdm;



  nan->significand |= VFP_DOUBLE_SIGNIFICAND_QNAN;
 }

 *vdd = *nan;




 return tn == VFP_SNAN || tm == VFP_SNAN ? FPSCR_IOC : VFP_NAN_FLAG;
}
