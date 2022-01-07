
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ksignal {int dummy; } ;
typedef int sigset_t ;


 int EFAULT ;

__attribute__((used)) static inline int handle_rt_signal64(struct ksignal *ksig, sigset_t *set,
         struct task_struct *tsk)
{
 return -EFAULT;
}
