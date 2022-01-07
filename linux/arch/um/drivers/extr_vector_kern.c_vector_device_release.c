
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_device {int list; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct vector_device* dev_get_drvdata (struct device*) ;
 int free_netdev (struct net_device*) ;
 int kfree (struct vector_device*) ;
 int list_del (int *) ;

__attribute__((used)) static void vector_device_release(struct device *dev)
{
 struct vector_device *device = dev_get_drvdata(dev);
 struct net_device *netdev = device->dev;

 list_del(&device->list);
 kfree(device);
 free_netdev(netdev);
}
