#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct tpm_tis_data {int irq; int irq_tested; int /*<<< orphan*/  locality; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct tpm_chip {int flags; TYPE_1__ dev; } ;

/* Variables and functions */
 int TPM_CHIP_FLAG_IRQ ; 
 int TPM_GLOBAL_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct tpm_tis_data* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct tpm_chip*) ; 
 int /*<<< orphan*/  tis_int_handler ; 
 int FUNC7 (struct tpm_chip*) ; 
 int FUNC8 (struct tpm_tis_data*,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (struct tpm_tis_data*,int,int*) ; 
 int FUNC10 (struct tpm_tis_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct tpm_tis_data*,int,int) ; 

__attribute__((used)) static int FUNC12(struct tpm_chip *chip, u32 intmask,
				    int flags, int irq)
{
	struct tpm_tis_data *priv = FUNC3(&chip->dev);
	u8 original_int_vec;
	int rc;
	u32 int_status;

	if (FUNC6(chip->dev.parent, irq, tis_int_handler, flags,
			     FUNC5(&chip->dev), chip) != 0) {
		FUNC4(&chip->dev, "Unable to request irq: %d for probe\n",
			 irq);
		return -1;
	}
	priv->irq = irq;

	rc = FUNC9(priv, FUNC2(priv->locality),
			   &original_int_vec);
	if (rc < 0)
		return rc;

	rc = FUNC11(priv, FUNC2(priv->locality), irq);
	if (rc < 0)
		return rc;

	rc = FUNC8(priv, FUNC1(priv->locality), &int_status);
	if (rc < 0)
		return rc;

	/* Clear all existing */
	rc = FUNC10(priv, FUNC1(priv->locality), int_status);
	if (rc < 0)
		return rc;

	/* Turn on */
	rc = FUNC10(priv, FUNC0(priv->locality),
			     intmask | TPM_GLOBAL_INT_ENABLE);
	if (rc < 0)
		return rc;

	priv->irq_tested = false;

	/* Generate an interrupt by having the core call through to
	 * tpm_tis_send
	 */
	rc = FUNC7(chip);
	if (rc < 0)
		return rc;

	/* tpm_tis_send will either confirm the interrupt is working or it
	 * will call disable_irq which undoes all of the above.
	 */
	if (!(chip->flags & TPM_CHIP_FLAG_IRQ)) {
		rc = FUNC11(priv, original_int_vec,
				FUNC2(priv->locality));
		if (rc < 0)
			return rc;

		return 1;
	}

	return 0;
}