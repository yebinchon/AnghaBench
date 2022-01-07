
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; struct apm_user* private_data; } ;
struct apm_user {int writer; int reader; int list; int suser; } ;


 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int apm_user_list ;
 int capable (int ) ;
 int down_write (int *) ;
 struct apm_user* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int up_write (int *) ;
 int user_list_lock ;

__attribute__((used)) static int apm_open(struct inode * inode, struct file * filp)
{
 struct apm_user *as;

 as = kzalloc(sizeof(*as), GFP_KERNEL);
 if (as) {







  as->suser = capable(CAP_SYS_ADMIN);
  as->writer = (filp->f_mode & FMODE_WRITE) == FMODE_WRITE;
  as->reader = (filp->f_mode & FMODE_READ) == FMODE_READ;

  down_write(&user_list_lock);
  list_add(&as->list, &apm_user_list);
  up_write(&user_list_lock);

  filp->private_data = as;
 }

 return as ? 0 : -ENOMEM;
}
