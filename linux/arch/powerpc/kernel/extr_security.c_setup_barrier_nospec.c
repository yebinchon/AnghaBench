
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEC_FTR_BNDS_CHK_SPEC_BAR ;
 int SEC_FTR_FAVOUR_SECURITY ;
 int cpu_mitigations_off () ;
 int enable_barrier_nospec (int) ;
 int no_nospec ;
 scalar_t__ security_ftr_enabled (int ) ;

void setup_barrier_nospec(void)
{
 bool enable;
 enable = security_ftr_enabled(SEC_FTR_FAVOUR_SECURITY) &&
   security_ftr_enabled(SEC_FTR_BNDS_CHK_SPEC_BAR);

 if (!no_nospec && !cpu_mitigations_off())
  enable_barrier_nospec(enable);
}
