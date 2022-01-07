
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gfn_t ;


 int kvm_read_guest_page_mmu (struct kvm_vcpu*,int ,int ,void*,int,int,int ) ;

__attribute__((used)) static int kvm_read_nested_guest_page(struct kvm_vcpu *vcpu, gfn_t gfn,
          void *data, int offset, int len, u32 access)
{
 return kvm_read_guest_page_mmu(vcpu, vcpu->arch.walk_mmu, gfn,
           data, offset, len, access);
}
