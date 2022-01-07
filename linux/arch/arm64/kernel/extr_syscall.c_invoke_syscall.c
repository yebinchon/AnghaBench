
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syscall_fn_t ;
struct pt_regs {long* regs; } ;


 long __invoke_syscall (struct pt_regs*,int ) ;
 size_t array_index_nospec (unsigned int,unsigned int) ;
 long do_ni_syscall (struct pt_regs*,unsigned int) ;

__attribute__((used)) static void invoke_syscall(struct pt_regs *regs, unsigned int scno,
      unsigned int sc_nr,
      const syscall_fn_t syscall_table[])
{
 long ret;

 if (scno < sc_nr) {
  syscall_fn_t syscall_fn;
  syscall_fn = syscall_table[array_index_nospec(scno, sc_nr)];
  ret = __invoke_syscall(regs, syscall_fn);
 } else {
  ret = do_ni_syscall(regs, scno);
 }

 regs->regs[0] = ret;
}
