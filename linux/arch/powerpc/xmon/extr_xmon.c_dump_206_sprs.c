
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_206 ;
 int MSR_HV ;
 int SPRN_AMOR ;
 int SPRN_AMR ;
 int SPRN_DABR ;
 int SPRN_DABRX ;
 int SPRN_DSCR ;
 int SPRN_DSISR ;
 int SPRN_HDAR ;
 int SPRN_HDEC ;
 int SPRN_HDSISR ;
 int SPRN_HSPRG0 ;
 int SPRN_HSPRG1 ;
 int SPRN_HSRR0 ;
 int SPRN_HSRR1 ;
 int SPRN_LPCR ;
 int SPRN_LPID ;
 int SPRN_PCR ;
 int SPRN_PIR ;
 int SPRN_PPR ;
 int SPRN_SDR1 ;
 int SPRN_SRR0 ;
 int SPRN_SRR1 ;
 int SPRN_UAMOR ;
 int cpu_has_feature (int ) ;
 int mfmsr () ;
 int mfspr (int ) ;
 int printf (char*,int ,int ,...) ;

__attribute__((used)) static void dump_206_sprs(void)
{
}
