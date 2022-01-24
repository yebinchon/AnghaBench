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
typedef  int u32 ;
struct tpm_tis_data {int irq_tested; int /*<<< orphan*/  locality; int /*<<< orphan*/  int_queue; int /*<<< orphan*/  read_queue; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int TPM_INTF_CMD_READY_INT ; 
 int TPM_INTF_DATA_AVAIL_INT ; 
 int TPM_INTF_LOCALITY_CHANGE_INT ; 
 int TPM_INTF_STS_VALID_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tpm_chip*,int) ; 
 struct tpm_tis_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tpm_tis_data*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct tpm_tis_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int dummy, void *dev_id)
{
	struct tpm_chip *chip = dev_id;
	struct tpm_tis_data *priv = FUNC2(&chip->dev);
	u32 interrupt;
	int i, rc;

	rc = FUNC3(priv, FUNC0(priv->locality), &interrupt);
	if (rc < 0)
		return IRQ_NONE;

	if (interrupt == 0)
		return IRQ_NONE;

	priv->irq_tested = true;
	if (interrupt & TPM_INTF_DATA_AVAIL_INT)
		FUNC5(&priv->read_queue);
	if (interrupt & TPM_INTF_LOCALITY_CHANGE_INT)
		for (i = 0; i < 5; i++)
			if (FUNC1(chip, i))
				break;
	if (interrupt &
	    (TPM_INTF_LOCALITY_CHANGE_INT | TPM_INTF_STS_VALID_INT |
	     TPM_INTF_CMD_READY_INT))
		FUNC5(&priv->int_queue);

	/* Clear interrupts handled with TPM_EOI */
	rc = FUNC4(priv, FUNC0(priv->locality), interrupt);
	if (rc < 0)
		return IRQ_NONE;

	FUNC3(priv, FUNC0(priv->locality), &interrupt);
	return IRQ_HANDLED;
}