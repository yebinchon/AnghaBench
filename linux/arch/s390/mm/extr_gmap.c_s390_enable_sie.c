
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_pgste; } ;
struct mm_struct {int mmap_sem; TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int EINVAL ;
 int TASK_SIZE ;
 TYPE_2__* current ;
 int down_write (int *) ;
 int mm_alloc_pgste (struct mm_struct*) ;
 scalar_t__ mm_has_pgste (struct mm_struct*) ;
 int thp_split_mm (struct mm_struct*) ;
 int up_write (int *) ;
 int walk_page_range (struct mm_struct*,int ,int ,int *,int *) ;
 int zap_zero_walk_ops ;

int s390_enable_sie(void)
{
 struct mm_struct *mm = current->mm;


 if (mm_has_pgste(mm))
  return 0;

 if (!mm_alloc_pgste(mm))
  return -EINVAL;
 down_write(&mm->mmap_sem);
 mm->context.has_pgste = 1;

 thp_split_mm(mm);
 walk_page_range(mm, 0, TASK_SIZE, &zap_zero_walk_ops, ((void*)0));
 up_write(&mm->mmap_sem);
 return 0;
}
