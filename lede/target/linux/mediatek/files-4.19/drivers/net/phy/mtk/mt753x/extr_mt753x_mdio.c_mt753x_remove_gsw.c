
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int list; } ;


 int list_del (int *) ;
 int mt753x_devs_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mt753x_remove_gsw(struct gsw_mt753x *gsw)
{
 mutex_lock(&mt753x_devs_lock);
 list_del(&gsw->list);
 mutex_unlock(&mt753x_devs_lock);
}
