
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_hpt_info {int order; scalar_t__ virt; scalar_t__ cma; int * rev; } ;


 int PAGE_SHIFT ;
 int free_pages (scalar_t__,int) ;
 int kvm_free_hpt_cma (int ,int) ;
 int vfree (int *) ;
 int virt_to_page (scalar_t__) ;

void kvmppc_free_hpt(struct kvm_hpt_info *info)
{
 vfree(info->rev);
 info->rev = ((void*)0);
 if (info->cma)
  kvm_free_hpt_cma(virt_to_page(info->virt),
     1 << (info->order - PAGE_SHIFT));
 else if (info->virt)
  free_pages(info->virt, info->order - PAGE_SHIFT);
 info->virt = 0;
 info->order = 0;
}
