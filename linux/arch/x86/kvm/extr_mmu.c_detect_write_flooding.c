
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ level; } ;
struct kvm_mmu_page {int write_flooding_count; TYPE_1__ role; } ;


 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;

__attribute__((used)) static bool detect_write_flooding(struct kvm_mmu_page *sp)
{




 if (sp->role.level == PT_PAGE_TABLE_LEVEL)
  return 0;

 atomic_inc(&sp->write_flooding_count);
 return atomic_read(&sp->write_flooding_count) >= 3;
}
