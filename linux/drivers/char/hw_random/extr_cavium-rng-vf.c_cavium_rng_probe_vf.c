
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int quality; int read; int name; } ;
struct cavium_rng {TYPE_1__ ops; int result; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cavium_rng_read ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_hwrng_register (int *,TYPE_1__*) ;
 int devm_kasprintf (int *,int ,char*,int ) ;
 struct cavium_rng* devm_kzalloc (int *,int,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct cavium_rng*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;

__attribute__((used)) static int cavium_rng_probe_vf(struct pci_dev *pdev,
    const struct pci_device_id *id)
{
 struct cavium_rng *rng;
 int ret;

 rng = devm_kzalloc(&pdev->dev, sizeof(*rng), GFP_KERNEL);
 if (!rng)
  return -ENOMEM;


 rng->result = pcim_iomap(pdev, 0, 0);
 if (!rng->result) {
  dev_err(&pdev->dev, "Error iomap failed retrieving result.\n");
  return -ENOMEM;
 }

 rng->ops.name = devm_kasprintf(&pdev->dev, GFP_KERNEL,
           "cavium-rng-%s", dev_name(&pdev->dev));
 if (!rng->ops.name)
  return -ENOMEM;

 rng->ops.read = cavium_rng_read;
 rng->ops.quality = 1000;

 pci_set_drvdata(pdev, rng);

 ret = devm_hwrng_register(&pdev->dev, &rng->ops);
 if (ret) {
  dev_err(&pdev->dev, "Error registering device as HWRNG.\n");
  return ret;
 }

 return 0;
}
