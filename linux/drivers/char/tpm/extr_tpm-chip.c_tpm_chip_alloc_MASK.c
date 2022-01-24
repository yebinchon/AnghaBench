#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tpm_class_ops {int dummy; } ;
struct TYPE_11__ {void* devt; int /*<<< orphan*/  release; TYPE_2__* class; struct device* parent; int /*<<< orphan*/  groups; } ;
struct TYPE_9__ {void* session_buf; void* context_buf; } ;
struct TYPE_12__ {void* owner; } ;
struct tpm_chip {int dev_num; int flags; int locality; TYPE_4__ dev; TYPE_4__ devs; TYPE_1__ work_space; TYPE_8__ cdevs; TYPE_8__ cdev; int /*<<< orphan*/  groups; struct tpm_class_ops const* ops; int /*<<< orphan*/  ops_sem; int /*<<< orphan*/  tpm_mutex; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  shutdown_pre; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tpm_chip* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISC_MAJOR ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PAGE_SIZE ; 
 void* THIS_MODULE ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int TPM_CHIP_FLAG_VIRTUAL ; 
 int TPM_MINOR ; 
 int TPM_NUM_DEVICES ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  dev_nums_idr ; 
 int FUNC5 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tpm_chip*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 TYPE_2__* tpm_class ; 
 int /*<<< orphan*/  tpm_class_shutdown ; 
 int /*<<< orphan*/  tpm_dev_release ; 
 int /*<<< orphan*/  tpm_devs_release ; 
 int /*<<< orphan*/  tpm_devt ; 
 int /*<<< orphan*/  tpm_fops ; 
 TYPE_2__* tpmrm_class ; 
 int /*<<< orphan*/  tpmrm_fops ; 

struct tpm_chip *FUNC16(struct device *pdev,
				const struct tpm_class_ops *ops)
{
	struct tpm_chip *chip;
	int rc;

	chip = FUNC11(sizeof(*chip), GFP_KERNEL);
	if (chip == NULL)
		return FUNC0(-ENOMEM);

	FUNC12(&chip->tpm_mutex);
	FUNC9(&chip->ops_sem);

	chip->ops = ops;

	FUNC13(&idr_lock);
	rc = FUNC8(&dev_nums_idr, NULL, 0, TPM_NUM_DEVICES, GFP_KERNEL);
	FUNC14(&idr_lock);
	if (rc < 0) {
		FUNC4(pdev, "No available tpm device numbers\n");
		FUNC10(chip);
		return FUNC0(rc);
	}
	chip->dev_num = rc;

	FUNC6(&chip->dev);
	FUNC6(&chip->devs);

	chip->dev.class = tpm_class;
	chip->dev.class->shutdown_pre = tpm_class_shutdown;
	chip->dev.release = tpm_dev_release;
	chip->dev.parent = pdev;
	chip->dev.groups = chip->groups;

	chip->devs.parent = pdev;
	chip->devs.class = tpmrm_class;
	chip->devs.release = tpm_devs_release;
	/* get extra reference on main device to hold on
	 * behalf of devs.  This holds the chip structure
	 * while cdevs is in use.  The corresponding put
	 * is in the tpm_devs_release (TPM2 only)
	 */
	if (chip->flags & TPM_CHIP_FLAG_TPM2)
		FUNC7(&chip->dev);

	if (chip->dev_num == 0)
		chip->dev.devt = FUNC2(MISC_MAJOR, TPM_MINOR);
	else
		chip->dev.devt = FUNC2(FUNC1(tpm_devt), chip->dev_num);

	chip->devs.devt =
		FUNC2(FUNC1(tpm_devt), chip->dev_num + TPM_NUM_DEVICES);

	rc = FUNC5(&chip->dev, "tpm%d", chip->dev_num);
	if (rc)
		goto out;
	rc = FUNC5(&chip->devs, "tpmrm%d", chip->dev_num);
	if (rc)
		goto out;

	if (!pdev)
		chip->flags |= TPM_CHIP_FLAG_VIRTUAL;

	FUNC3(&chip->cdev, &tpm_fops);
	FUNC3(&chip->cdevs, &tpmrm_fops);
	chip->cdev.owner = THIS_MODULE;
	chip->cdevs.owner = THIS_MODULE;

	chip->work_space.context_buf = FUNC11(PAGE_SIZE, GFP_KERNEL);
	if (!chip->work_space.context_buf) {
		rc = -ENOMEM;
		goto out;
	}
	chip->work_space.session_buf = FUNC11(PAGE_SIZE, GFP_KERNEL);
	if (!chip->work_space.session_buf) {
		rc = -ENOMEM;
		goto out;
	}

	chip->locality = -1;
	return chip;

out:
	FUNC15(&chip->devs);
	FUNC15(&chip->dev);
	return FUNC0(rc);
}