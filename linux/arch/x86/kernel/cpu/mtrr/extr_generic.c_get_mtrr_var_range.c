
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_var_range {int mask_hi; int mask_lo; int base_hi; int base_lo; } ;


 int MTRRphysBase_MSR (unsigned int) ;
 int MTRRphysMask_MSR (unsigned int) ;
 int rdmsr (int ,int ,int ) ;

__attribute__((used)) static void
get_mtrr_var_range(unsigned int index, struct mtrr_var_range *vr)
{
 rdmsr(MTRRphysBase_MSR(index), vr->base_lo, vr->base_hi);
 rdmsr(MTRRphysMask_MSR(index), vr->mask_lo, vr->mask_hi);
}
