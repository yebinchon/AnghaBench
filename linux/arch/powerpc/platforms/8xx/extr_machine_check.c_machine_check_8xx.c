
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long msr; int dar; int nip; } ;


 int SIGBUS ;
 int bad_page_fault (struct pt_regs*,int ,int ) ;
 int pr_cont (char*,int ) ;
 int pr_err (char*,...) ;

int machine_check_8xx(struct pt_regs *regs)
{
 unsigned long reason = regs->msr;

 pr_err("Machine check in kernel mode.\n");
 pr_err("Caused by (from SRR1=%lx): ", reason);
 if (reason & 0x40000000)
  pr_cont("Fetch error at address %lx\n", regs->nip);
 else
  pr_cont("Data access error at address %lx\n", regs->dar);
 return 0;

}
