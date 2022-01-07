
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mce {int status; int bank; } ;
typedef enum context { ____Placeholder_context } context ;
struct TYPE_2__ {int succor; } ;


 int IN_KERNEL ;
 int MCE_AR_SEVERITY ;
 int MCE_PANIC_SEVERITY ;
 int MCI_CONFIG_MCAX ;
 int MCI_STATUS_TCC ;
 int MSR_AMD64_SMCA_MCx_CONFIG (int ) ;
 TYPE_1__ mce_flags ;
 scalar_t__ rdmsr_safe (int,int*,int*) ;

__attribute__((used)) static int mce_severity_amd_smca(struct mce *m, enum context err_ctx)
{
 u32 addr = MSR_AMD64_SMCA_MCx_CONFIG(m->bank);
 u32 low, high;







 if (!mce_flags.succor)
  return MCE_PANIC_SEVERITY;

 if (rdmsr_safe(addr, &low, &high))
  return MCE_PANIC_SEVERITY;


 if ((low & MCI_CONFIG_MCAX) &&
     (m->status & MCI_STATUS_TCC) &&
     (err_ctx == IN_KERNEL))
  return MCE_PANIC_SEVERITY;


 return MCE_AR_SEVERITY;
}
