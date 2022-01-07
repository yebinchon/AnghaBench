
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int cpuflags; } ;


 int atomic_or (int ,int *) ;

__attribute__((used)) static inline void kvm_s390_set_cpuflags(struct kvm_vcpu *vcpu, u32 flags)
{
 atomic_or(flags, &vcpu->arch.sie_block->cpuflags);
}
