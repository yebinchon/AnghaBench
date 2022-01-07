
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int pgd; } ;


 long H_RESOURCE ;
 long H_TOO_HARD ;
 TYPE_2__* current ;
 long kvmppc_do_h_enter (struct kvm*,unsigned long,long,unsigned long,unsigned long,int ,int,unsigned long*) ;
 int pr_err (char*) ;
 int rcu_read_lock_sched () ;
 int rcu_read_unlock_sched () ;

__attribute__((used)) static long kvmppc_virtmode_do_h_enter(struct kvm *kvm, unsigned long flags,
    long pte_index, unsigned long pteh,
    unsigned long ptel, unsigned long *pte_idx_ret)
{
 long ret;


 rcu_read_lock_sched();
 ret = kvmppc_do_h_enter(kvm, flags, pte_index, pteh, ptel,
    current->mm->pgd, 0, pte_idx_ret);
 rcu_read_unlock_sched();
 if (ret == H_TOO_HARD) {

  pr_err("KVM: Oops, kvmppc_h_enter returned too hard!\n");
  ret = H_RESOURCE;
 }
 return ret;

}
