
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int swdev; } ;


 int unregister_switch (int *) ;

void mt753x_swconfig_destroy(struct gsw_mt753x *gsw)
{
 unregister_switch(&gsw->swdev);
}
