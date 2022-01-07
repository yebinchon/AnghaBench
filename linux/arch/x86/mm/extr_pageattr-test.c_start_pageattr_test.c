
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int IS_ERR (struct task_struct*) ;
 int WARN_ON (int) ;
 int do_pageattr_test ;
 struct task_struct* kthread_create (int ,int *,char*) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int start_pageattr_test(void)
{
 struct task_struct *p;

 p = kthread_create(do_pageattr_test, ((void*)0), "pageattr-test");
 if (!IS_ERR(p))
  wake_up_process(p);
 else
  WARN_ON(1);

 return 0;
}
