
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct debug_view {int dummy; } ;
struct TYPE_3__ {int lock; struct dentry** debugfs_entries; struct debug_view** views; } ;
typedef TYPE_1__ debug_info_t ;


 int DEBUG_MAX_VIEWS ;
 int debugfs_remove (struct dentry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int debug_unregister_view(debug_info_t *id, struct debug_view *view)
{
 struct dentry *dentry = ((void*)0);
 unsigned long flags;
 int i, rc = 0;

 if (!id)
  goto out;
 spin_lock_irqsave(&id->lock, flags);
 for (i = 0; i < DEBUG_MAX_VIEWS; i++) {
  if (id->views[i] == view)
   break;
 }
 if (i == DEBUG_MAX_VIEWS) {
  rc = -1;
 } else {
  dentry = id->debugfs_entries[i];
  id->views[i] = ((void*)0);
  id->debugfs_entries[i] = ((void*)0);
 }
 spin_unlock_irqrestore(&id->lock, flags);
 debugfs_remove(dentry);
out:
 return rc;
}
