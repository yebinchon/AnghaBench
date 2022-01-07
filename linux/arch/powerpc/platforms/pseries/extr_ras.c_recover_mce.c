
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; int nip; } ;
struct machine_check_event {scalar_t__ disposition; scalar_t__ severity; scalar_t__ sync_error; } ;


 int BUS_MCEERR_AR ;
 scalar_t__ MCE_DISPOSITION_RECOVERED ;
 scalar_t__ MCE_SEV_FATAL ;
 int MSR_RI ;
 int SIGBUS ;
 int _exception (int ,struct pt_regs*,int ,int ) ;
 int die (char*,struct pt_regs*,int ) ;
 scalar_t__ die_will_crash () ;
 int pr_err (char*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int recover_mce(struct pt_regs *regs, struct machine_check_event *evt)
{
 int recovered = 0;

 if (!(regs->msr & MSR_RI)) {

  pr_err("Machine check interrupt unrecoverable: MSR(RI=0)\n");
  recovered = 0;
 } else if (evt->disposition == MCE_DISPOSITION_RECOVERED) {

  recovered = 1;
 } else if (evt->severity == MCE_SEV_FATAL) {

  pr_err("Machine check interrupt is fatal\n");
  recovered = 0;
 }

 if (!recovered && evt->sync_error) {
  if ((user_mode(regs))) {
   _exception(SIGBUS, regs, BUS_MCEERR_AR, regs->nip);
   recovered = 1;
  } else if (die_will_crash()) {





   recovered = 0;
  } else {
   die("Machine check", regs, SIGBUS);
   recovered = 1;
  }
 }

 return recovered;
}
