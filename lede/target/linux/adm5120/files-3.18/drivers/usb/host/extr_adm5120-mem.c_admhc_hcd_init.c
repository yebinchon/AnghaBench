
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct admhcd {int pending; int lock; int next_statechange; } ;


 int INIT_LIST_HEAD (int *) ;
 int jiffies ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void admhc_hcd_init(struct admhcd *ahcd)
{
 ahcd->next_statechange = jiffies;
 spin_lock_init(&ahcd->lock);
 INIT_LIST_HEAD(&ahcd->pending);
}
