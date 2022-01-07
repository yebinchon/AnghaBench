
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * gpr; } ;
struct TYPE_4__ {TYPE_1__ regs; int pgdir; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 long kvmppc_do_h_enter (int ,unsigned long,long,unsigned long,unsigned long,int ,int,int *) ;

long kvmppc_h_enter(struct kvm_vcpu *vcpu, unsigned long flags,
      long pte_index, unsigned long pteh, unsigned long ptel)
{
 return kvmppc_do_h_enter(vcpu->kvm, flags, pte_index, pteh, ptel,
     vcpu->arch.pgdir, 1,
     &vcpu->arch.regs.gpr[4]);
}
