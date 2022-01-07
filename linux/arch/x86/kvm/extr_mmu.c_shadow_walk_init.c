
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_shadow_walk_iterator {int dummy; } ;
struct TYPE_3__ {int root_hpa; } ;


 int shadow_walk_init_using_root (struct kvm_shadow_walk_iterator*,struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static void shadow_walk_init(struct kvm_shadow_walk_iterator *iterator,
        struct kvm_vcpu *vcpu, u64 addr)
{
 shadow_walk_init_using_root(iterator, vcpu, vcpu->arch.mmu->root_hpa,
        addr);
}
