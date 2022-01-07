
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int quality; int read; int name; } ;
struct TYPE_9__ {int function; } ;
struct timeriomem_rng_private {int present; int io_base; TYPE_1__ rng_ops; int completion; TYPE_2__ timer; int period; } ;
struct timeriomem_rng_data {int period; int quality; } ;
struct resource {int start; } ;
struct TYPE_10__ {scalar_t__ of_node; struct timeriomem_rng_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;


 int CLOCK_MONOTONIC ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_ABS ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int NSEC_PER_USEC ;
 int PTR_ERR (int ) ;
 int complete (int *) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_info (TYPE_3__*,char*,int ,int) ;
 int dev_name (TYPE_3__*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct timeriomem_rng_private* devm_kzalloc (TYPE_3__*,int,int ) ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int hwrng_register (TYPE_1__*) ;
 int init_completion (int *) ;
 int ns_to_ktime (int) ;
 int of_property_read_u32 (scalar_t__,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct timeriomem_rng_private*) ;
 int resource_size (struct resource*) ;
 int timeriomem_rng_read ;
 int timeriomem_rng_trigger ;

__attribute__((used)) static int timeriomem_rng_probe(struct platform_device *pdev)
{
 struct timeriomem_rng_data *pdata = pdev->dev.platform_data;
 struct timeriomem_rng_private *priv;
 struct resource *res;
 int err = 0;
 int period;

 if (!pdev->dev.of_node && !pdata) {
  dev_err(&pdev->dev, "timeriomem_rng_data is missing\n");
  return -EINVAL;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENXIO;

 if (res->start % 4 != 0 || resource_size(res) < 4) {
  dev_err(&pdev->dev,
   "address must be at least four bytes wide and 32-bit aligned\n");
  return -EINVAL;
 }


 priv = devm_kzalloc(&pdev->dev,
   sizeof(struct timeriomem_rng_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);

 if (pdev->dev.of_node) {
  int i;

  if (!of_property_read_u32(pdev->dev.of_node,
      "period", &i))
   period = i;
  else {
   dev_err(&pdev->dev, "missing period\n");
   return -EINVAL;
  }

  if (!of_property_read_u32(pdev->dev.of_node,
      "quality", &i))
   priv->rng_ops.quality = i;
  else
   priv->rng_ops.quality = 0;
 } else {
  period = pdata->period;
  priv->rng_ops.quality = pdata->quality;
 }

 priv->period = ns_to_ktime(period * NSEC_PER_USEC);
 init_completion(&priv->completion);
 hrtimer_init(&priv->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 priv->timer.function = timeriomem_rng_trigger;

 priv->rng_ops.name = dev_name(&pdev->dev);
 priv->rng_ops.read = timeriomem_rng_read;

 priv->io_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->io_base)) {
  return PTR_ERR(priv->io_base);
 }


 priv->present = 1;
 complete(&priv->completion);

 err = hwrng_register(&priv->rng_ops);
 if (err) {
  dev_err(&pdev->dev, "problem registering\n");
  return err;
 }

 dev_info(&pdev->dev, "32bits from 0x%p @ %dus\n",
   priv->io_base, period);

 return 0;
}
