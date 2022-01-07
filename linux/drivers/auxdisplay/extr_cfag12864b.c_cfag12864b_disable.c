
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_delayed_work (int *) ;
 int cfag12864b_mutex ;
 scalar_t__ cfag12864b_updating ;
 int cfag12864b_work ;
 int cfag12864b_workqueue ;
 int flush_workqueue (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cfag12864b_disable(void)
{
 mutex_lock(&cfag12864b_mutex);

 if (cfag12864b_updating) {
  cfag12864b_updating = 0;
  cancel_delayed_work(&cfag12864b_work);
  flush_workqueue(cfag12864b_workqueue);
 }

 mutex_unlock(&cfag12864b_mutex);
}
