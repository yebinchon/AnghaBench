
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int dbsr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
 int SPRN_DBSR ;
 int WatchdogException (struct pt_regs*) ;
 int do_IRQ (struct pt_regs*) ;
 int doorbell_exception (struct pt_regs*) ;
 int kvmppc_clear_dbsr () ;
 int kvmppc_fill_pt_regs (struct pt_regs*) ;
 int mfspr (int ) ;
 int performance_monitor_exception (struct pt_regs*) ;
 int timer_interrupt (struct pt_regs*) ;
 int unknown_exception (struct pt_regs*) ;

__attribute__((used)) static void kvmppc_restart_interrupt(struct kvm_vcpu *vcpu,
         unsigned int exit_nr)
{
 struct pt_regs regs;

 switch (exit_nr) {
 case 131:
  kvmppc_fill_pt_regs(&regs);
  do_IRQ(&regs);
  break;
 case 133:
  kvmppc_fill_pt_regs(&regs);
  timer_interrupt(&regs);
  break;






 case 130:

  break;
 case 129:
  kvmppc_fill_pt_regs(&regs);
  performance_monitor_exception(&regs);
  break;
 case 128:
  kvmppc_fill_pt_regs(&regs);



  unknown_exception(&regs);

  break;
 case 135:
  kvmppc_fill_pt_regs(&regs);
  unknown_exception(&regs);
  break;
 case 134:

  vcpu->arch.dbsr = mfspr(SPRN_DBSR);
  kvmppc_clear_dbsr();
  break;
 }
}
