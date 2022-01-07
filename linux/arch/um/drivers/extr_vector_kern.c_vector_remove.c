
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {int * fds; } ;
struct vector_device {int pdev; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 struct vector_device* find_device (int) ;
 struct vector_private* netdev_priv (struct net_device*) ;
 int platform_device_unregister (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int vector_remove(int n, char **error_out)
{
 struct vector_device *vec_d;
 struct net_device *dev;
 struct vector_private *vp;

 vec_d = find_device(n);
 if (vec_d == ((void*)0))
  return -ENODEV;
 dev = vec_d->dev;
 vp = netdev_priv(dev);
 if (vp->fds != ((void*)0))
  return -EBUSY;
 unregister_netdev(dev);
 platform_device_unregister(&vec_d->pdev);
 return 0;
}
