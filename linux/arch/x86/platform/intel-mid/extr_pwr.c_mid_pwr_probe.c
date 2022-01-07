
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct pci_dev {int irq; struct device dev; } ;
struct mid_pwr_device_info {int (* set_initial_state ) (struct mid_pwr*) ;} ;
struct mid_pwr {int available; int lock; int irq; int regs; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_NO_SUSPEND ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 struct mid_pwr* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct mid_pwr*) ;
 int mid_pwr_interrupt_disable (struct mid_pwr*) ;
 int mid_pwr_irq_handler ;
 struct mid_pwr* midpwr ;
 int mutex_init (int *) ;
 int pci_name (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct mid_pwr*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;
 int stub1 (struct mid_pwr*) ;

__attribute__((used)) static int mid_pwr_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct mid_pwr_device_info *info = (void *)id->driver_data;
 struct device *dev = &pdev->dev;
 struct mid_pwr *pwr;
 int ret;

 ret = pcim_enable_device(pdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "error: could not enable device\n");
  return ret;
 }

 ret = pcim_iomap_regions(pdev, 1 << 0, pci_name(pdev));
 if (ret) {
  dev_err(&pdev->dev, "I/O memory remapping failed\n");
  return ret;
 }

 pwr = devm_kzalloc(dev, sizeof(*pwr), GFP_KERNEL);
 if (!pwr)
  return -ENOMEM;

 pwr->dev = dev;
 pwr->regs = pcim_iomap_table(pdev)[0];
 pwr->irq = pdev->irq;

 mutex_init(&pwr->lock);


 mid_pwr_interrupt_disable(pwr);

 if (info && info->set_initial_state) {
  ret = info->set_initial_state(pwr);
  if (ret)
   dev_warn(dev, "Can't set initial state: %d\n", ret);
 }

 ret = devm_request_irq(dev, pdev->irq, mid_pwr_irq_handler,
          IRQF_NO_SUSPEND, pci_name(pdev), pwr);
 if (ret)
  return ret;

 pwr->available = 1;
 midpwr = pwr;

 pci_set_drvdata(pdev, pwr);
 return 0;
}
