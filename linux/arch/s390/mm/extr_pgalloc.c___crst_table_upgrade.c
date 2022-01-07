
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int __tlb_flush_local () ;
 TYPE_1__* current ;
 int set_user_asce (struct mm_struct*) ;

__attribute__((used)) static void __crst_table_upgrade(void *arg)
{
 struct mm_struct *mm = arg;

 if (current->active_mm == mm)
  set_user_asce(mm);
 __tlb_flush_local();
}
