
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int virtual_tsc_shift; int virtual_tsc_mult; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int pvclock_scale_delta (int ,int ,int ) ;

__attribute__((used)) static inline u64 nsec_to_cycles(struct kvm_vcpu *vcpu, u64 nsec)
{
 return pvclock_scale_delta(nsec, vcpu->arch.virtual_tsc_mult,
       vcpu->arch.virtual_tsc_shift);
}
