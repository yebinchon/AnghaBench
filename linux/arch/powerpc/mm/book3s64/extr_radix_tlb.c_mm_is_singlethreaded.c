
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int copros; } ;
struct mm_struct {int mm_users; TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int atomic_read (int *) ;
 TYPE_2__* current ;

__attribute__((used)) static bool mm_is_singlethreaded(struct mm_struct *mm)
{
 if (atomic_read(&mm->context.copros) > 0)
  return 0;
 if (atomic_read(&mm->mm_users) <= 1 && current->mm == mm)
  return 1;
 return 0;
}
