
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int lpages; } ;
struct kvm {TYPE_2__ stat; } ;
struct TYPE_4__ {scalar_t__ level; } ;
struct TYPE_6__ {TYPE_1__ role; } ;


 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 int WARN_ON (int) ;
 int __pa (int *) ;
 int drop_spte (struct kvm*,int *) ;
 scalar_t__ is_large_pte (int ) ;
 TYPE_3__* page_header (int ) ;

__attribute__((used)) static bool __drop_large_spte(struct kvm *kvm, u64 *sptep)
{
 if (is_large_pte(*sptep)) {
  WARN_ON(page_header(__pa(sptep))->role.level ==
   PT_PAGE_TABLE_LEVEL);
  drop_spte(kvm, sptep);
  --kvm->stat.lpages;
  return 1;
 }

 return 0;
}
