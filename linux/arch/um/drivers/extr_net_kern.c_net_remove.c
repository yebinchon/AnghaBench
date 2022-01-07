
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {scalar_t__ fd; } ;
struct uml_net {int pdev; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 struct uml_net* find_device (int) ;
 struct uml_net_private* netdev_priv (struct net_device*) ;
 int platform_device_unregister (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int net_remove(int n, char **error_out)
{
 struct uml_net *device;
 struct net_device *dev;
 struct uml_net_private *lp;

 device = find_device(n);
 if (device == ((void*)0))
  return -ENODEV;

 dev = device->dev;
 lp = netdev_priv(dev);
 if (lp->fd > 0)
  return -EBUSY;
 unregister_netdev(dev);
 platform_device_unregister(&device->pdev);

 return 0;
}
