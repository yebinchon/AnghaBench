
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int nip; } ;


 unsigned long DSISR_KEYFAULT ;
 unsigned long DSISR_NOEXEC_OR_G ;
 unsigned long DSISR_PROTFAULT ;
 unsigned long TASK_SIZE ;
 int TRAP (struct pt_regs*) ;
 scalar_t__ bad_kuap_fault (struct pt_regs*,int) ;
 int current_uid () ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int pr_crit_ratelimited (char*,...) ;
 int search_exception_tables (int ) ;

__attribute__((used)) static bool bad_kernel_fault(struct pt_regs *regs, unsigned long error_code,
        unsigned long address, bool is_write)
{
 int is_exec = TRAP(regs) == 0x400;


 if (is_exec && (error_code & (DSISR_NOEXEC_OR_G | DSISR_KEYFAULT |
          DSISR_PROTFAULT))) {
  pr_crit_ratelimited("kernel tried to execute %s page (%lx) - exploit attempt? (uid: %d)\n",
        address >= TASK_SIZE ? "exec-protected" : "user",
        address,
        from_kuid(&init_user_ns, current_uid()));


  return 1;
 }

 if (!is_exec && address < TASK_SIZE && (error_code & DSISR_PROTFAULT) &&
     !search_exception_tables(regs->nip)) {
  pr_crit_ratelimited("Kernel attempted to access user page (%lx) - exploit attempt? (uid: %d)\n",
        address,
        from_kuid(&init_user_ns, current_uid()));
 }


 if (address >= TASK_SIZE)
  return 1;


 if (!search_exception_tables(regs->nip))
  return 1;



 if (bad_kuap_fault(regs, is_write))
  return 1;



 return 0;
}
