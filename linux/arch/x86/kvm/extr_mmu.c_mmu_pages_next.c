
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmu_page_path {unsigned int* idx; struct kvm_mmu_page** parent; } ;
struct kvm_mmu_pages {int nr; TYPE_2__* page; } ;
struct TYPE_3__ {int level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct TYPE_4__ {unsigned int idx; struct kvm_mmu_page* sp; } ;


 int PT_PAGE_TABLE_LEVEL ;

__attribute__((used)) static int mmu_pages_next(struct kvm_mmu_pages *pvec,
     struct mmu_page_path *parents,
     int i)
{
 int n;

 for (n = i+1; n < pvec->nr; n++) {
  struct kvm_mmu_page *sp = pvec->page[n].sp;
  unsigned idx = pvec->page[n].idx;
  int level = sp->role.level;

  parents->idx[level-1] = idx;
  if (level == PT_PAGE_TABLE_LEVEL)
   break;

  parents->parent[level-2] = sp;
 }

 return n;
}
