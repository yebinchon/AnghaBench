
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int * pae_root; } ;
struct TYPE_2__ {scalar_t__ (* get_tdp_level ) (struct kvm_vcpu*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int INVALID_PAGE ;
 scalar_t__ PT32E_ROOT_LEVEL ;
 int __GFP_DMA32 ;
 struct page* alloc_page (int) ;
 TYPE_1__* kvm_x86_ops ;
 int * page_address (struct page*) ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 scalar_t__ tdp_enabled ;

__attribute__((used)) static int alloc_mmu_pages(struct kvm_vcpu *vcpu, struct kvm_mmu *mmu)
{
 struct page *page;
 int i;
 if (tdp_enabled && kvm_x86_ops->get_tdp_level(vcpu) > PT32E_ROOT_LEVEL)
  return 0;

 page = alloc_page(GFP_KERNEL_ACCOUNT | __GFP_DMA32);
 if (!page)
  return -ENOMEM;

 mmu->pae_root = page_address(page);
 for (i = 0; i < 4; ++i)
  mmu->pae_root[i] = INVALID_PAGE;

 return 0;
}
