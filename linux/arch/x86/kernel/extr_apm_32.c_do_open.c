
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; struct apm_user* private_data; } ;
struct apm_user {int writer; int reader; struct apm_user* next; int suser; scalar_t__ standbys_read; scalar_t__ suspends_read; scalar_t__ standbys_pending; scalar_t__ suspends_pending; scalar_t__ event_head; scalar_t__ event_tail; int magic; } ;


 int APM_BIOS_MAGIC ;
 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int capable (int ) ;
 struct apm_user* kmalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct apm_user* user_list ;
 int user_list_lock ;

__attribute__((used)) static int do_open(struct inode *inode, struct file *filp)
{
 struct apm_user *as;

 as = kmalloc(sizeof(*as), GFP_KERNEL);
 if (as == ((void*)0))
  return -ENOMEM;

 as->magic = APM_BIOS_MAGIC;
 as->event_tail = as->event_head = 0;
 as->suspends_pending = as->standbys_pending = 0;
 as->suspends_read = as->standbys_read = 0;







 as->suser = capable(CAP_SYS_ADMIN);
 as->writer = (filp->f_mode & FMODE_WRITE) == FMODE_WRITE;
 as->reader = (filp->f_mode & FMODE_READ) == FMODE_READ;
 spin_lock(&user_list_lock);
 as->next = user_list;
 user_list = as;
 spin_unlock(&user_list_lock);
 filp->private_data = as;
 return 0;
}
