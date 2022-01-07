
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_uml_platform_data {int socket_path; } ;
struct TYPE_2__ {struct virtio_uml_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int kfree (int ) ;
 int platform_device_unregister (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int vu_unregister_cmdline_device(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;

 kfree(pdata->socket_path);
 platform_device_unregister(pdev);
 return 0;
}
