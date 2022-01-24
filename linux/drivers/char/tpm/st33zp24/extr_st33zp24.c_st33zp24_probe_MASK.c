#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct tpm_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct st33zp24_phy_ops {int (* send ) (void*,scalar_t__,int*,int) ;} ;
struct st33zp24_dev {int irq; void* phy_id; struct st33zp24_phy_ops const* ops; scalar_t__ intrs; int /*<<< orphan*/  read_queue; scalar_t__ locality; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (struct tpm_chip*) ; 
 scalar_t__ LOCALITY0 ; 
 int FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  TIS_LONG_TIMEOUT ; 
 int /*<<< orphan*/  TIS_SHORT_TIMEOUT ; 
 int /*<<< orphan*/  TPM_CHIP_FLAG_IRQ ; 
 int TPM_GLOBAL_INT_ENABLE ; 
 int TPM_INTF_CMD_READY_INT ; 
 int TPM_INTF_DATA_AVAIL_INT ; 
 int TPM_INTF_STS_VALID_INT ; 
 scalar_t__ TPM_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct st33zp24_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct st33zp24_dev*) ; 
 struct st33zp24_dev* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct tpm_chip*) ; 
 int /*<<< orphan*/  st33zp24_tpm ; 
 int FUNC12 (void*,scalar_t__,int*,int) ; 
 int FUNC13 (void*,scalar_t__,int*,int) ; 
 int FUNC14 (struct tpm_chip*) ; 
 int /*<<< orphan*/  tpm_ioserirq_handler ; 
 struct tpm_chip* FUNC15 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC16(void *phy_id, const struct st33zp24_phy_ops *ops,
		   struct device *dev, int irq, int io_lpcpd)
{
	int ret;
	u8 intmask = 0;
	struct tpm_chip *chip;
	struct st33zp24_dev *tpm_dev;

	chip = FUNC15(dev, &st33zp24_tpm);
	if (FUNC0(chip))
		return FUNC1(chip);

	tpm_dev = FUNC6(dev, sizeof(struct st33zp24_dev),
			       GFP_KERNEL);
	if (!tpm_dev)
		return -ENOMEM;

	tpm_dev->phy_id = phy_id;
	tpm_dev->ops = ops;
	FUNC5(&chip->dev, tpm_dev);

	chip->timeout_a = FUNC10(TIS_SHORT_TIMEOUT);
	chip->timeout_b = FUNC10(TIS_LONG_TIMEOUT);
	chip->timeout_c = FUNC10(TIS_SHORT_TIMEOUT);
	chip->timeout_d = FUNC10(TIS_SHORT_TIMEOUT);

	tpm_dev->locality = LOCALITY0;

	if (irq) {
		/* INTERRUPT Setup */
		FUNC9(&tpm_dev->read_queue);
		tpm_dev->intrs = 0;

		if (FUNC11(chip) != LOCALITY0) {
			ret = -ENODEV;
			goto _tpm_clean_answer;
		}

		FUNC2(tpm_dev);
		ret = FUNC7(dev, irq, tpm_ioserirq_handler,
				IRQF_TRIGGER_HIGH, "TPM SERIRQ management",
				chip);
		if (ret < 0) {
			FUNC3(&chip->dev, "TPM SERIRQ signals %d not available\n",
				irq);
			goto _tpm_clean_answer;
		}

		intmask |= TPM_INTF_CMD_READY_INT
			|  TPM_INTF_STS_VALID_INT
			|  TPM_INTF_DATA_AVAIL_INT;

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

		FUNC8(tpm_dev->irq);
	}

	return FUNC14(chip);
_tpm_clean_answer:
	FUNC4(&chip->dev, "TPM initialization fail\n");
	return ret;
}