
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap_notifier {int list; } ;


 int gmap_notifier_list ;
 int gmap_notifier_lock ;
 int list_add_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gmap_register_pte_notifier(struct gmap_notifier *nb)
{
 spin_lock(&gmap_notifier_lock);
 list_add_rcu(&nb->list, &gmap_notifier_list);
 spin_unlock(&gmap_notifier_lock);
}
