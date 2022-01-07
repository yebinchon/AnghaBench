
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; int vcpu_id; } ;
struct TYPE_3__ {int idle_mask; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int CPUSTAT_WAIT ;
 int clear_bit (int ,int ) ;
 int kvm_s390_clear_cpuflags (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void __unset_cpu_idle(struct kvm_vcpu *vcpu)
{
 kvm_s390_clear_cpuflags(vcpu, CPUSTAT_WAIT);
 clear_bit(vcpu->vcpu_id, vcpu->kvm->arch.idle_mask);
}
