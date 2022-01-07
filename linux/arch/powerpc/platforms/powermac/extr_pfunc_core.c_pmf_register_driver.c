
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_handlers {int dummy; } ;
struct pmf_device {int link; int functions; struct pmf_handlers* handlers; int node; int ref; } ;
struct device_node {int dummy; } ;


 int DBG (char*,...) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct pmf_device*) ;
 int kref_init (int *) ;
 struct pmf_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int pmf_add_functions (struct pmf_device*,void*) ;
 int pmf_devices ;
 struct pmf_device* pmf_find_device (struct device_node*) ;
 int pmf_lock ;
 int pmf_put_device (struct pmf_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pmf_register_driver(struct device_node *np,
   struct pmf_handlers *handlers,
   void *driverdata)
{
 struct pmf_device *dev;
 unsigned long flags;
 int rc = 0;

 if (handlers == ((void*)0))
  return -EINVAL;

 DBG("pmf: registering driver for node %pOF\n", np);

 spin_lock_irqsave(&pmf_lock, flags);
 dev = pmf_find_device(np);
 spin_unlock_irqrestore(&pmf_lock, flags);
 if (dev != ((void*)0)) {
  DBG("pmf: already there !\n");
  pmf_put_device(dev);
  return -EBUSY;
 }

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  DBG("pmf: no memory !\n");
  return -ENOMEM;
 }
 kref_init(&dev->ref);
 dev->node = of_node_get(np);
 dev->handlers = handlers;
 INIT_LIST_HEAD(&dev->functions);

 rc = pmf_add_functions(dev, driverdata);
 if (rc == 0) {
  DBG("pmf: no functions, disposing.. \n");
  of_node_put(np);
  kfree(dev);
  return -ENODEV;
 }

 spin_lock_irqsave(&pmf_lock, flags);
 list_add(&dev->link, &pmf_devices);
 spin_unlock_irqrestore(&pmf_lock, flags);

 return 0;
}
