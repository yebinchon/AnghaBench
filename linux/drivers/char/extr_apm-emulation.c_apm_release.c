
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct apm_user* private_data; } ;
struct apm_user {scalar_t__ suspend_state; int list; } ;


 scalar_t__ SUSPEND_PENDING ;
 scalar_t__ SUSPEND_READ ;
 int apm_suspend_waitqueue ;
 int atomic_dec (int *) ;
 int down_write (int *) ;
 int kfree (struct apm_user*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int state_lock ;
 int suspend_acks_pending ;
 int up_write (int *) ;
 int user_list_lock ;
 int wake_up (int *) ;

__attribute__((used)) static int apm_release(struct inode * inode, struct file * filp)
{
 struct apm_user *as = filp->private_data;

 filp->private_data = ((void*)0);

 down_write(&user_list_lock);
 list_del(&as->list);
 up_write(&user_list_lock);





 mutex_lock(&state_lock);
 if (as->suspend_state == SUSPEND_PENDING ||
     as->suspend_state == SUSPEND_READ)
  atomic_dec(&suspend_acks_pending);
 mutex_unlock(&state_lock);

 wake_up(&apm_suspend_waitqueue);

 kfree(as);
 return 0;
}
