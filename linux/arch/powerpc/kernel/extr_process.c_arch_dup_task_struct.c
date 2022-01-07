
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __switch_to_tm (struct task_struct*,struct task_struct*) ;
 int clear_task_ebb (struct task_struct*) ;
 int flush_all_to_thread (struct task_struct*) ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{
 flush_all_to_thread(src);
 __switch_to_tm(src, src);

 *dst = *src;

 clear_task_ebb(dst);

 return 0;
}
