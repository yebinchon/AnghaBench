
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * gpr; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 long kvmppc_do_h_remove (int ,unsigned long,unsigned long,unsigned long,int *) ;

long kvmppc_h_remove(struct kvm_vcpu *vcpu, unsigned long flags,
       unsigned long pte_index, unsigned long avpn)
{
 return kvmppc_do_h_remove(vcpu->kvm, flags, pte_index, avpn,
      &vcpu->arch.regs.gpr[4]);
}
