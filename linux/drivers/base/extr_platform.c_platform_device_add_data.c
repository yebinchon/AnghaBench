
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmemdup (void const*,size_t,int ) ;

int platform_device_add_data(struct platform_device *pdev, const void *data,
        size_t size)
{
 void *d = ((void*)0);

 if (data) {
  d = kmemdup(data, size, GFP_KERNEL);
  if (!d)
   return -ENOMEM;
 }

 kfree(pdev->dev.platform_data);
 pdev->dev.platform_data = d;
 return 0;
}
