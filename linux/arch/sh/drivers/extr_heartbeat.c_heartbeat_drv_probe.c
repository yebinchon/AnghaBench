
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; int start; } ;
struct TYPE_2__ {struct heartbeat_data* platform_data; } ;
struct platform_device {int num_resources; TYPE_1__ dev; } ;
struct heartbeat_data {int nr_bits; int* bit_pos; int mask; int regsize; int timer; int base; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;



 int IORESOURCE_MEM_TYPE_MASK ;
 int* default_bit_pos ;
 int dev_err (TYPE_1__*,char*) ;
 int heartbeat_timer ;
 int ioremap_nocache (int ,int ) ;
 scalar_t__ jiffies ;
 int kfree (struct heartbeat_data*) ;
 struct heartbeat_data* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct heartbeat_data*) ;
 int resource_size (struct resource*) ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int heartbeat_drv_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct heartbeat_data *hd;
 int i;

 if (unlikely(pdev->num_resources != 1)) {
  dev_err(&pdev->dev, "invalid number of resources\n");
  return -EINVAL;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (unlikely(res == ((void*)0))) {
  dev_err(&pdev->dev, "invalid resource\n");
  return -EINVAL;
 }

 if (pdev->dev.platform_data) {
  hd = pdev->dev.platform_data;
 } else {
  hd = kzalloc(sizeof(struct heartbeat_data), GFP_KERNEL);
  if (unlikely(!hd))
   return -ENOMEM;
 }

 hd->base = ioremap_nocache(res->start, resource_size(res));
 if (unlikely(!hd->base)) {
  dev_err(&pdev->dev, "ioremap failed\n");

  if (!pdev->dev.platform_data)
   kfree(hd);

  return -ENXIO;
 }

 if (!hd->nr_bits) {
  hd->bit_pos = default_bit_pos;
  hd->nr_bits = ARRAY_SIZE(default_bit_pos);
 }

 hd->mask = 0;
 for (i = 0; i < hd->nr_bits; i++)
  hd->mask |= (1 << hd->bit_pos[i]);

 if (!hd->regsize) {
  switch (res->flags & IORESOURCE_MEM_TYPE_MASK) {
  case 129:
   hd->regsize = 32;
   break;
  case 130:
   hd->regsize = 16;
   break;
  case 128:
  default:
   hd->regsize = 8;
   break;
  }
 }

 timer_setup(&hd->timer, heartbeat_timer, 0);
 platform_set_drvdata(pdev, hd);

 return mod_timer(&hd->timer, jiffies + 1);
}
