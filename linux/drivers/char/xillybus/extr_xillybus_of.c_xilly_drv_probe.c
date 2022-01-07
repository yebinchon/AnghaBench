
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint_hardware {int dummy; } ;
struct xilly_endpoint {int dev; int registers; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int dev_set_drvdata (struct device*,struct xilly_endpoint*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct xilly_endpoint*) ;
 struct xilly_endpoint_hardware of_hw ;
 struct xilly_endpoint_hardware of_hw_coherent ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int xillybus_endpoint_discovery (struct xilly_endpoint*) ;
 struct xilly_endpoint* xillybus_init_endpoint (int *,struct device*,struct xilly_endpoint_hardware*) ;
 int xillybus_isr ;
 int xillyname ;

__attribute__((used)) static int xilly_drv_probe(struct platform_device *op)
{
 struct device *dev = &op->dev;
 struct xilly_endpoint *endpoint;
 int rc;
 int irq;
 struct resource *res;
 struct xilly_endpoint_hardware *ephw = &of_hw;

 if (of_property_read_bool(dev->of_node, "dma-coherent"))
  ephw = &of_hw_coherent;

 endpoint = xillybus_init_endpoint(((void*)0), dev, ephw);

 if (!endpoint)
  return -ENOMEM;

 dev_set_drvdata(dev, endpoint);

 res = platform_get_resource(op, IORESOURCE_MEM, 0);
 endpoint->registers = devm_ioremap_resource(dev, res);

 if (IS_ERR(endpoint->registers))
  return PTR_ERR(endpoint->registers);

 irq = platform_get_irq(op, 0);

 rc = devm_request_irq(dev, irq, xillybus_isr, 0, xillyname, endpoint);

 if (rc) {
  dev_err(endpoint->dev,
   "Failed to register IRQ handler. Aborting.\n");
  return -ENODEV;
 }

 return xillybus_endpoint_discovery(endpoint);
}
