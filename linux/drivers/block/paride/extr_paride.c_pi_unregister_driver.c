
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_driver {int dummy; } ;


 int kfree (struct parport_driver*) ;
 int parport_unregister_driver (struct parport_driver*) ;

void pi_unregister_driver(void *_drv)
{
 struct parport_driver *drv = _drv;

 parport_unregister_driver(drv);
 kfree(drv);
}
