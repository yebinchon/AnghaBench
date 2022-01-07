
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int coprocessor_flush_all (int ) ;
 int task_thread_info (struct task_struct*) ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{



 *dst = *src;
 return 0;
}
