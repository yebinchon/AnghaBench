
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmu_page_path {struct kvm_mmu_page** parent; } ;
struct kvm_mmu_pages {scalar_t__ nr; TYPE_2__* page; } ;
struct TYPE_3__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct TYPE_4__ {scalar_t__ idx; struct kvm_mmu_page* sp; } ;


 scalar_t__ INVALID_INDEX ;
 int PT_PAGE_TABLE_LEVEL ;
 int WARN_ON (int) ;
 int mmu_pages_next (struct kvm_mmu_pages*,struct mmu_page_path*,int ) ;

__attribute__((used)) static int mmu_pages_first(struct kvm_mmu_pages *pvec,
      struct mmu_page_path *parents)
{
 struct kvm_mmu_page *sp;
 int level;

 if (pvec->nr == 0)
  return 0;

 WARN_ON(pvec->page[0].idx != INVALID_INDEX);

 sp = pvec->page[0].sp;
 level = sp->role.level;
 WARN_ON(level == PT_PAGE_TABLE_LEVEL);

 parents->parent[level-2] = sp;




 parents->parent[level-1] = ((void*)0);
 return mmu_pages_next(pvec, parents, 0);
}
