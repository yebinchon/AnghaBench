
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int srcu_idx; TYPE_1__* kvm; } ;
struct TYPE_2__ {int srcu; } ;


 int EMULTYPE_NO_DECODE ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int ) ;

__attribute__((used)) static inline int complete_emulated_io(struct kvm_vcpu *vcpu)
{
 int r;

 vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
 r = kvm_emulate_instruction(vcpu, EMULTYPE_NO_DECODE);
 srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
 return r;
}
