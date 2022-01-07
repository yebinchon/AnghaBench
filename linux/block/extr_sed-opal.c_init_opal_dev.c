
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int * send_recv; void* data; int dev_lock; int unlk_lst; } ;
typedef int sec_send_recv ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ check_opal_support (struct opal_dev*) ;
 int kfree (struct opal_dev*) ;
 struct opal_dev* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*) ;

struct opal_dev *init_opal_dev(void *data, sec_send_recv *send_recv)
{
 struct opal_dev *dev;

 dev = kmalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 INIT_LIST_HEAD(&dev->unlk_lst);
 mutex_init(&dev->dev_lock);
 dev->data = data;
 dev->send_recv = send_recv;
 if (check_opal_support(dev) != 0) {
  pr_debug("Opal is not supported on this device\n");
  kfree(dev);
  return ((void*)0);
 }

 return dev;
}
