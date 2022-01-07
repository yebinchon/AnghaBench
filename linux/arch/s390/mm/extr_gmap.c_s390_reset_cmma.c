
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mmap_sem; } ;


 int TASK_SIZE ;
 int down_write (int *) ;
 int reset_cmma_walk_ops ;
 int up_write (int *) ;
 int walk_page_range (struct mm_struct*,int ,int ,int *,int *) ;

void s390_reset_cmma(struct mm_struct *mm)
{
 down_write(&mm->mmap_sem);
 walk_page_range(mm, 0, TASK_SIZE, &reset_cmma_walk_ops, ((void*)0));
 up_write(&mm->mmap_sem);
}
