
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vas_window {int winid; int * dbgname; struct dentry* dbgdir; TYPE_1__* vinst; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int dbgdir; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* debugfs_create_dir (int *,int ) ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct vas_window*,int *) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int hvwc_fops ;
 int info_fops ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int snprintf (int *,int,char*,int) ;

void vas_window_init_dbgdir(struct vas_window *window)
{
 struct dentry *f, *d;

 if (!window->vinst->dbgdir)
  return;

 window->dbgname = kzalloc(16, GFP_KERNEL);
 if (!window->dbgname)
  return;

 snprintf(window->dbgname, 16, "w%d", window->winid);

 d = debugfs_create_dir(window->dbgname, window->vinst->dbgdir);
 if (IS_ERR(d))
  goto free_name;

 window->dbgdir = d;

 f = debugfs_create_file("info", 0444, d, window, &info_fops);
 if (IS_ERR(f))
  goto remove_dir;

 f = debugfs_create_file("hvwc", 0444, d, window, &hvwc_fops);
 if (IS_ERR(f))
  goto remove_dir;

 return;

remove_dir:
 debugfs_remove_recursive(window->dbgdir);
 window->dbgdir = ((void*)0);

free_name:
 kfree(window->dbgname);
 window->dbgname = ((void*)0);
}
