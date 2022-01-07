
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CM_GCR_L2_PFT_CONTROL_NPFT ;
 unsigned long CM_GCR_L2_PFT_CONTROL_PFTEN ;
 scalar_t__ CM_REV_CM2_5 ;
 scalar_t__ mips_cm_revision () ;
 unsigned long read_gcr_l2_pft_control () ;

__attribute__((used)) static bool mips_sc_prefetch_is_enabled(void)
{
 unsigned long pftctl;

 if (mips_cm_revision() < CM_REV_CM2_5)
  return 0;

 pftctl = read_gcr_l2_pft_control();
 if (!(pftctl & CM_GCR_L2_PFT_CONTROL_NPFT))
  return 0;
 return !!(pftctl & CM_GCR_L2_PFT_CONTROL_PFTEN);
}
