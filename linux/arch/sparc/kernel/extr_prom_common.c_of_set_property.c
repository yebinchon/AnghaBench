
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; struct property* next; void* value; int name; } ;
struct device_node {int phandle; struct property* properties; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ OF_IS_DYNAMIC (struct property*) ;
 int OF_MARK_DYNAMIC (struct property*) ;
 int devtree_lock ;
 int kfree (void*) ;
 void* kmemdup (void*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_set_property_mutex ;
 int prom_setprop (int ,char const*,void*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int strcasecmp (int ,char const*) ;

int of_set_property(struct device_node *dp, const char *name, void *val, int len)
{
 struct property **prevp;
 unsigned long flags;
 void *new_val;
 int err;

 new_val = kmemdup(val, len, GFP_KERNEL);
 if (!new_val)
  return -ENOMEM;

 err = -ENODEV;

 mutex_lock(&of_set_property_mutex);
 raw_spin_lock_irqsave(&devtree_lock, flags);
 prevp = &dp->properties;
 while (*prevp) {
  struct property *prop = *prevp;

  if (!strcasecmp(prop->name, name)) {
   void *old_val = prop->value;
   int ret;

   ret = prom_setprop(dp->phandle, name, val, len);

   err = -EINVAL;
   if (ret >= 0) {
    prop->value = new_val;
    prop->length = len;

    if (OF_IS_DYNAMIC(prop))
     kfree(old_val);

    OF_MARK_DYNAMIC(prop);

    err = 0;
   }
   break;
  }
  prevp = &(*prevp)->next;
 }
 raw_spin_unlock_irqrestore(&devtree_lock, flags);
 mutex_unlock(&of_set_property_mutex);



 return err;
}
