
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {scalar_t__ loader; scalar_t__ claimed; } ;
struct ecard_request {struct expansion_card* ec; int fn; } ;
struct ecard_driver {int (* shutdown ) (struct expansion_card*) ;} ;
struct device {scalar_t__ driver; } ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 struct ecard_driver* ECARD_DRV (scalar_t__) ;
 int ecard_call (struct ecard_request*) ;
 int ecard_task_reset ;
 int stub1 (struct expansion_card*) ;

__attribute__((used)) static void ecard_drv_shutdown(struct device *dev)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 struct ecard_driver *drv = ECARD_DRV(dev->driver);
 struct ecard_request req;

 if (dev->driver) {
  if (drv->shutdown)
   drv->shutdown(ec);
  ec->claimed = 0;
 }




 if (ec->loader) {
  req.fn = ecard_task_reset;
  req.ec = ec;
  ecard_call(&req);
 }
}
