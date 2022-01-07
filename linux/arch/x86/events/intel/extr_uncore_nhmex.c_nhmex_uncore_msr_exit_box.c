
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {int dummy; } ;


 int NHMEX_U_MSR_PMON_GLOBAL_CTL ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void nhmex_uncore_msr_exit_box(struct intel_uncore_box *box)
{
 wrmsrl(NHMEX_U_MSR_PMON_GLOBAL_CTL, 0);
}
