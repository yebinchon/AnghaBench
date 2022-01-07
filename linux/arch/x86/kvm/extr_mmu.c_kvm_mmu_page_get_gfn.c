
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; int direct; } ;
struct kvm_mmu_page {TYPE_1__ role; scalar_t__ gfn; scalar_t__* gfns; } ;
typedef scalar_t__ gfn_t ;


 int PT64_LEVEL_BITS ;

__attribute__((used)) static gfn_t kvm_mmu_page_get_gfn(struct kvm_mmu_page *sp, int index)
{
 if (!sp->role.direct)
  return sp->gfns[index];

 return sp->gfn + (index << ((sp->role.level - 1) * PT64_LEVEL_BITS));
}
