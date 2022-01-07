
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int link_work; } ;


 int cancel_delayed_work_sync (int *) ;

void ag71xx_ar7240_stop(struct ag71xx *ag)
{
 cancel_delayed_work_sync(&ag->link_work);
}
