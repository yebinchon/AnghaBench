
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int debug_hook_lock ;
 int list_add_rcu (struct list_head*,struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void register_debug_hook(struct list_head *node, struct list_head *list)
{
 spin_lock(&debug_hook_lock);
 list_add_rcu(node, list);
 spin_unlock(&debug_hook_lock);

}
