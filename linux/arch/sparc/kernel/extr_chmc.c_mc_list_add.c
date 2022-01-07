
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int list_add (struct list_head*,int *) ;
 int mctrl_list ;
 int mctrl_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mc_list_add(struct list_head *list)
{
 spin_lock(&mctrl_list_lock);
 list_add(list, &mctrl_list);
 spin_unlock(&mctrl_list_lock);
}
