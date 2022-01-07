
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap_notifier {int list; } ;


 int gmap_notifier_lock ;
 int list_del_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

void gmap_unregister_pte_notifier(struct gmap_notifier *nb)
{
 spin_lock(&gmap_notifier_lock);
 list_del_rcu(&nb->list);
 spin_unlock(&gmap_notifier_lock);
 synchronize_rcu();
}
