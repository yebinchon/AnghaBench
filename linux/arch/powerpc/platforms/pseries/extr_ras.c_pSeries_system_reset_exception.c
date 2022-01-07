
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct pt_regs {int nip; scalar_t__ msr; } ;
typedef scalar_t__ __be64 ;


 int MSR_DR ;
 int MSR_HV ;
 int MSR_ILE ;
 int MSR_IR ;
 int MSR_LE ;
 int MSR_ME ;
 int MSR_PR ;
 int MSR_RI ;
 int MSR_SF ;
 int be64_to_cpu (scalar_t__) ;
 scalar_t__ fwnmi_active ;
 struct rtas_error_log* fwnmi_get_errinfo (struct pt_regs*) ;
 int fwnmi_release_errinfo () ;
 scalar_t__ smp_handle_nmi_ipi (struct pt_regs*) ;

int pSeries_system_reset_exception(struct pt_regs *regs)
{







 if ((be64_to_cpu(regs->msr) &
   (MSR_LE|MSR_RI|MSR_DR|MSR_IR|MSR_ME|MSR_PR|
    MSR_ILE|MSR_HV|MSR_SF)) == (MSR_DR|MSR_SF)) {
  regs->nip = be64_to_cpu((__be64)regs->nip);
  regs->msr = 0;
 }


 if (fwnmi_active) {
  struct rtas_error_log *errhdr = fwnmi_get_errinfo(regs);
  if (errhdr) {

  }
  fwnmi_release_errinfo();
 }

 if (smp_handle_nmi_ipi(regs))
  return 1;

 return 0;
}
