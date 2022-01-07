
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int dev; int nodename; } ;
struct backend_info {struct xenbus_device* dev; } ;


 int dev_warn (int *,char*,int) ;
 int xenbus_printf (struct xenbus_transaction,int ,char*,char*,int) ;

int xen_blkbk_barrier(struct xenbus_transaction xbt,
        struct backend_info *be, int state)
{
 struct xenbus_device *dev = be->dev;
 int err;

 err = xenbus_printf(xbt, dev->nodename, "feature-barrier",
       "%d", state);
 if (err)
  dev_warn(&dev->dev, "writing feature-barrier (%d)", err);

 return err;
}
