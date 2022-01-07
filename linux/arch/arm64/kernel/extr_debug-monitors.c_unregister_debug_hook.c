
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int debug_hook_lock ;
 int list_del_rcu (struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void unregister_debug_hook(struct list_head *node)
{
 spin_lock(&debug_hook_lock);
 list_del_rcu(node);
 spin_unlock(&debug_hook_lock);
 synchronize_rcu();
}
