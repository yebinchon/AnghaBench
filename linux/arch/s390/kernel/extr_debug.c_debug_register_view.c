
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int umode_t ;
struct dentry {int dummy; } ;
struct debug_view {int name; int input_proc; scalar_t__ header_proc; scalar_t__ format_proc; scalar_t__ prolog_proc; } ;
struct TYPE_4__ {int mode; int lock; struct dentry** debugfs_entries; struct debug_view** views; int name; int debugfs_root_entry; } ;
typedef TYPE_1__ debug_info_t ;


 int DEBUG_MAX_VIEWS ;
 int S_IFREG ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXUGO ;
 int debug_file_ops ;
 struct dentry* debugfs_create_file (int ,int,int ,TYPE_1__*,int *) ;
 int debugfs_remove (struct dentry*) ;
 int pr_err (char*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int debug_register_view(debug_info_t *id, struct debug_view *view)
{
 unsigned long flags;
 struct dentry *pde;
 umode_t mode;
 int rc = 0;
 int i;

 if (!id)
  goto out;
 mode = (id->mode | S_IFREG) & ~S_IXUGO;
 if (!(view->prolog_proc || view->format_proc || view->header_proc))
  mode &= ~(S_IRUSR | S_IRGRP | S_IROTH);
 if (!view->input_proc)
  mode &= ~(S_IWUSR | S_IWGRP | S_IWOTH);
 pde = debugfs_create_file(view->name, mode, id->debugfs_root_entry,
      id, &debug_file_ops);
 spin_lock_irqsave(&id->lock, flags);
 for (i = 0; i < DEBUG_MAX_VIEWS; i++) {
  if (!id->views[i])
   break;
 }
 if (i == DEBUG_MAX_VIEWS) {
  pr_err("Registering view %s/%s would exceed the maximum "
         "number of views %i\n", id->name, view->name, i);
  rc = -1;
 } else {
  id->views[i] = view;
  id->debugfs_entries[i] = pde;
 }
 spin_unlock_irqrestore(&id->lock, flags);
 if (rc)
  debugfs_remove(pde);
out:
 return rc;
}
