
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long sepc; unsigned long sp; int sstatus; } ;


 int SR_FS_INITIAL ;
 int SR_SPIE ;
 int USER_DS ;
 int current ;
 int fstate_restore (int ,struct pt_regs*) ;
 scalar_t__ has_fpu ;
 int set_fs (int ) ;

void start_thread(struct pt_regs *regs, unsigned long pc,
 unsigned long sp)
{
 regs->sstatus = SR_SPIE;
 if (has_fpu) {
  regs->sstatus |= SR_FS_INITIAL;




  fstate_restore(current, regs);
 }
 regs->sepc = pc;
 regs->sp = sp;
 set_fs(USER_DS);
}
