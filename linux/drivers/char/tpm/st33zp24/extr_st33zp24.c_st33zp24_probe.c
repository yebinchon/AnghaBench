
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dev; int flags; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct st33zp24_phy_ops {int (* send ) (void*,scalar_t__,int*,int) ;} ;
struct st33zp24_dev {int irq; void* phy_id; struct st33zp24_phy_ops const* ops; scalar_t__ intrs; int read_queue; scalar_t__ locality; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (struct tpm_chip*) ;
 scalar_t__ LOCALITY0 ;
 int PTR_ERR (struct tpm_chip*) ;
 int TIS_LONG_TIMEOUT ;
 int TIS_SHORT_TIMEOUT ;
 int TPM_CHIP_FLAG_IRQ ;
 int TPM_GLOBAL_INT_ENABLE ;
 int TPM_INTF_CMD_READY_INT ;
 int TPM_INTF_DATA_AVAIL_INT ;
 int TPM_INTF_STS_VALID_INT ;
 scalar_t__ TPM_INT_ENABLE ;
 int clear_interruption (struct st33zp24_dev*) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int dev_set_drvdata (int *,struct st33zp24_dev*) ;
 struct st33zp24_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct tpm_chip*) ;
 int disable_irq_nosync (int) ;
 int init_waitqueue_head (int *) ;
 void* msecs_to_jiffies (int ) ;
 scalar_t__ request_locality (struct tpm_chip*) ;
 int st33zp24_tpm ;
 int stub1 (void*,scalar_t__,int*,int) ;
 int stub2 (void*,scalar_t__,int*,int) ;
 int tpm_chip_register (struct tpm_chip*) ;
 int tpm_ioserirq_handler ;
 struct tpm_chip* tpmm_chip_alloc (struct device*,int *) ;

int st33zp24_probe(void *phy_id, const struct st33zp24_phy_ops *ops,
     struct device *dev, int irq, int io_lpcpd)
{
 int ret;
 u8 intmask = 0;
 struct tpm_chip *chip;
 struct st33zp24_dev *tpm_dev;

 chip = tpmm_chip_alloc(dev, &st33zp24_tpm);
 if (IS_ERR(chip))
  return PTR_ERR(chip);

 tpm_dev = devm_kzalloc(dev, sizeof(struct st33zp24_dev),
          GFP_KERNEL);
 if (!tpm_dev)
  return -ENOMEM;

 tpm_dev->phy_id = phy_id;
 tpm_dev->ops = ops;
 dev_set_drvdata(&chip->dev, tpm_dev);

 chip->timeout_a = msecs_to_jiffies(TIS_SHORT_TIMEOUT);
 chip->timeout_b = msecs_to_jiffies(TIS_LONG_TIMEOUT);
 chip->timeout_c = msecs_to_jiffies(TIS_SHORT_TIMEOUT);
 chip->timeout_d = msecs_to_jiffies(TIS_SHORT_TIMEOUT);

 tpm_dev->locality = LOCALITY0;

 if (irq) {

  init_waitqueue_head(&tpm_dev->read_queue);
  tpm_dev->intrs = 0;

  if (request_locality(chip) != LOCALITY0) {
   ret = -ENODEV;
   goto _tpm_clean_answer;
  }

  clear_interruption(tpm_dev);
  ret = devm_request_irq(dev, irq, tpm_ioserirq_handler,
    IRQF_TRIGGER_HIGH, "TPM SERIRQ management",
    chip);
  if (ret < 0) {
   dev_err(&chip->dev, "TPM SERIRQ signals %d not available\n",
    irq);
   goto _tpm_clean_answer;
  }

  intmask |= TPM_INTF_CMD_READY_INT
   | TPM_INTF_STS_VALID_INT
   | TPM_INTF_DATA_AVAIL_INT;

  ret = tpm_dev->ops->send(tpm_dev->phy_id, TPM_INT_ENABLE,
      &intmask, 1);
  if (ret < 0)
   goto _tpm_clean_answer;

  intmask = TPM_GLOBAL_INT_ENABLE;
  ret = tpm_dev->ops->send(tpm_dev->phy_id, (TPM_INT_ENABLE + 3),
      &intmask, 1);
  if (ret < 0)
   goto _tpm_clean_answer;

  tpm_dev->irq = irq;
  chip->flags |= TPM_CHIP_FLAG_IRQ;

  disable_irq_nosync(tpm_dev->irq);
 }

 return tpm_chip_register(chip);
_tpm_clean_answer:
 dev_info(&chip->dev, "TPM initialization fail\n");
 return ret;
}
