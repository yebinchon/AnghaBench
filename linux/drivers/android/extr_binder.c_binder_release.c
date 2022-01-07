
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_proc {int * binderfs_entry; int debugfs_entry; } ;


 int BINDER_DEFERRED_RELEASE ;
 int binder_defer_work (struct binder_proc*,int ) ;
 int binderfs_remove_file (int *) ;
 int debugfs_remove (int ) ;

__attribute__((used)) static int binder_release(struct inode *nodp, struct file *filp)
{
 struct binder_proc *proc = filp->private_data;

 debugfs_remove(proc->debugfs_entry);

 if (proc->binderfs_entry) {
  binderfs_remove_file(proc->binderfs_entry);
  proc->binderfs_entry = ((void*)0);
 }

 binder_defer_work(proc, BINDER_DEFERRED_RELEASE);

 return 0;
}
