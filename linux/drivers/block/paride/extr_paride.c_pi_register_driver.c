
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_driver {char* name; int devmodel; int probe; } ;


 int GFP_KERNEL ;
 int kfree (struct parport_driver*) ;
 struct parport_driver* kzalloc (int,int ) ;
 int parport_register_driver (struct parport_driver*) ;
 int pi_probe ;

void *pi_register_driver(char *name)
{
 struct parport_driver *parp_drv;
 int ret;

 parp_drv = kzalloc(sizeof(*parp_drv), GFP_KERNEL);
 if (!parp_drv)
  return ((void*)0);

 parp_drv->name = name;
 parp_drv->probe = pi_probe;
 parp_drv->devmodel = 1;

 ret = parport_register_driver(parp_drv);
 if (ret) {
  kfree(parp_drv);
  return ((void*)0);
 }
 return (void *)parp_drv;
}
