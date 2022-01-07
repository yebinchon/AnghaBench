
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_pages {scalar_t__ nr; } ;
struct kvm_mmu_page {int unsync_children; } ;


 int INVALID_INDEX ;
 int __mmu_unsync_walk (struct kvm_mmu_page*,struct kvm_mmu_pages*) ;
 int mmu_pages_add (struct kvm_mmu_pages*,struct kvm_mmu_page*,int ) ;

__attribute__((used)) static int mmu_unsync_walk(struct kvm_mmu_page *sp,
      struct kvm_mmu_pages *pvec)
{
 pvec->nr = 0;
 if (!sp->unsync_children)
  return 0;

 mmu_pages_add(pvec, sp, INVALID_INDEX);
 return __mmu_unsync_walk(sp, pvec);
}
