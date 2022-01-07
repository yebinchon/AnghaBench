
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_300 ;
 int MSR_HV ;
 int SPRN_ASDR ;
 int SPRN_PID ;
 int SPRN_PSSCR ;
 int SPRN_PSSCR_PR ;
 int SPRN_PTCR ;
 int SPRN_TIDR ;
 int cpu_has_feature (int ) ;
 int mfmsr () ;
 int mfspr (int ) ;
 int printf (char*,int ,...) ;

__attribute__((used)) static void dump_300_sprs(void)
{
}
