
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct io_context {int ioprio; } ;
struct cred {int uid; int euid; } ;


 int CAP_SYS_NICE ;
 int EPERM ;
 int GFP_ATOMIC ;
 int NUMA_NO_NODE ;
 struct cred* __task_cred (struct task_struct*) ;
 int capable (int ) ;
 struct cred* current_cred () ;
 struct io_context* get_task_io_context (struct task_struct*,int ,int ) ;
 int put_io_context (struct io_context*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_setioprio (struct task_struct*,int) ;
 int uid_eq (int ,int ) ;

int set_task_ioprio(struct task_struct *task, int ioprio)
{
 int err;
 struct io_context *ioc;
 const struct cred *cred = current_cred(), *tcred;

 rcu_read_lock();
 tcred = __task_cred(task);
 if (!uid_eq(tcred->uid, cred->euid) &&
     !uid_eq(tcred->uid, cred->uid) && !capable(CAP_SYS_NICE)) {
  rcu_read_unlock();
  return -EPERM;
 }
 rcu_read_unlock();

 err = security_task_setioprio(task, ioprio);
 if (err)
  return err;

 ioc = get_task_io_context(task, GFP_ATOMIC, NUMA_NO_NODE);
 if (ioc) {
  ioc->ioprio = ioprio;
  put_io_context(ioc);
 }

 return err;
}
