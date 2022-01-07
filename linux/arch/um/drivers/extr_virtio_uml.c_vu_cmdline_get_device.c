
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_uml_platform_data {char* socket_path; int virtio_device_id; } ;
struct TYPE_2__ {struct virtio_uml_platform_data* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int snprintf (char*,scalar_t__,char*,char*,int,int) ;
 unsigned int strlen (char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int vu_cmdline_get_device(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
 char *buffer = data;
 unsigned int len = strlen(buffer);

 snprintf(buffer + len, PAGE_SIZE - len, "%s:%d:%d\n",
   pdata->socket_path, pdata->virtio_device_id, pdev->id);
 return 0;
}
