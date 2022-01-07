
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; } ;
struct kernfs_open_file {int dummy; } ;
struct cred {int suid; int euid; int uid; } ;


 int EPERM ;
 int GLOBAL_ROOT_UID ;
 struct cred* current_cred () ;
 struct cred* get_task_cred (struct task_struct*) ;
 int put_cred (struct cred const*) ;
 int rdt_last_cmd_printf (char*,int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int rdtgroup_task_write_permission(struct task_struct *task,
       struct kernfs_open_file *of)
{
 const struct cred *tcred = get_task_cred(task);
 const struct cred *cred = current_cred();
 int ret = 0;





 if (!uid_eq(cred->euid, GLOBAL_ROOT_UID) &&
     !uid_eq(cred->euid, tcred->uid) &&
     !uid_eq(cred->euid, tcred->suid)) {
  rdt_last_cmd_printf("No permission to move task %d\n", task->pid);
  ret = -EPERM;
 }

 put_cred(tcred);
 return ret;
}
