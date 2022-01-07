
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 struct xilly_endpoint* dev_get_drvdata (struct device*) ;
 int xillybus_endpoint_remove (struct xilly_endpoint*) ;

__attribute__((used)) static int xilly_drv_remove(struct platform_device *op)
{
 struct device *dev = &op->dev;
 struct xilly_endpoint *endpoint = dev_get_drvdata(dev);

 xillybus_endpoint_remove(endpoint);

 return 0;
}
