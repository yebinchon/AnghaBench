
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TIF_SVE ;
 int WARN_ON (int ) ;
 int __sve_free (struct task_struct*) ;
 int test_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static void sve_free(struct task_struct *task)
{
 WARN_ON(test_tsk_thread_flag(task, TIF_SVE));

 __sve_free(task);
}
