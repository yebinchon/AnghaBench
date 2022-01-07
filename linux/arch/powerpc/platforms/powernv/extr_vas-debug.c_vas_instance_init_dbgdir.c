
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_instance {int vas_id; struct dentry* dbgdir; int * dbgname; } ;
struct dentry {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* debugfs_create_dir (int *,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int snprintf (int *,int,char*,int) ;
 int vas_debugfs ;
 int vas_init_dbgdir () ;

void vas_instance_init_dbgdir(struct vas_instance *vinst)
{
 struct dentry *d;

 vas_init_dbgdir();
 if (!vas_debugfs)
  return;

 vinst->dbgname = kzalloc(16, GFP_KERNEL);
 if (!vinst->dbgname)
  return;

 snprintf(vinst->dbgname, 16, "v%d", vinst->vas_id);

 d = debugfs_create_dir(vinst->dbgname, vas_debugfs);
 if (IS_ERR(d))
  goto free_name;

 vinst->dbgdir = d;
 return;

free_name:
 kfree(vinst->dbgname);
 vinst->dbgname = ((void*)0);
 vinst->dbgdir = ((void*)0);
}
