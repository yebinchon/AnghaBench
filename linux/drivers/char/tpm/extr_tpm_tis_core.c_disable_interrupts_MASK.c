#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tpm_tis_data {scalar_t__ irq; int /*<<< orphan*/  locality; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct tpm_chip {int /*<<< orphan*/  flags; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_CHIP_FLAG_IRQ ; 
 int /*<<< orphan*/  TPM_GLOBAL_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tpm_tis_data* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct tpm_chip*) ; 
 int FUNC3 (struct tpm_tis_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tpm_tis_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tpm_chip *chip)
{
	struct tpm_tis_data *priv = FUNC1(&chip->dev);
	u32 intmask;
	int rc;

	rc = FUNC3(priv, FUNC0(priv->locality), &intmask);
	if (rc < 0)
		intmask = 0;

	intmask &= ~TPM_GLOBAL_INT_ENABLE;
	rc = FUNC4(priv, FUNC0(priv->locality), intmask);

	FUNC2(chip->dev.parent, priv->irq, chip);
	priv->irq = 0;
	chip->flags &= ~TPM_CHIP_FLAG_IRQ;
}