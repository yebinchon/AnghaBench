
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint {int lowest_minor; int num_channels; int dev; int major; int cdev; } ;


 int MKDEV (int ,int) ;
 int cdev_del (int *) ;
 int dev_info (int ,char*,int) ;
 int device_destroy (int ,int ) ;
 int unregister_chrdev_region (int ,int) ;
 int xillybus_class ;

__attribute__((used)) static void xillybus_cleanup_chrdev(struct xilly_endpoint *endpoint)
{
 int minor;

 for (minor = endpoint->lowest_minor;
      minor < (endpoint->lowest_minor + endpoint->num_channels);
      minor++)
  device_destroy(xillybus_class, MKDEV(endpoint->major, minor));
 cdev_del(&endpoint->cdev);
 unregister_chrdev_region(MKDEV(endpoint->major,
           endpoint->lowest_minor),
     endpoint->num_channels);

 dev_info(endpoint->dev, "Removed %d device files.\n",
   endpoint->num_channels);
}
