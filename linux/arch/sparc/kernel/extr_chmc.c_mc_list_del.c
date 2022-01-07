
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int list_del_init (struct list_head*) ;
 int mctrl_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mc_list_del(struct list_head *list)
{
 spin_lock(&mctrl_list_lock);
 list_del_init(list);
 spin_unlock(&mctrl_list_lock);
}
