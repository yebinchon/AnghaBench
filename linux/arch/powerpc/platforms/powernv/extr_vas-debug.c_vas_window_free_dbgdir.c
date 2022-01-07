
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vas_window {int * dbgname; int * dbgdir; } ;


 int debugfs_remove_recursive (int *) ;
 int kfree (int *) ;

void vas_window_free_dbgdir(struct vas_window *window)
{
 if (window->dbgdir) {
  debugfs_remove_recursive(window->dbgdir);
  kfree(window->dbgname);
  window->dbgdir = ((void*)0);
  window->dbgname = ((void*)0);
 }
}
