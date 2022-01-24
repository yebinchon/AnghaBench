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
struct tpm_tis_data {scalar_t__ ilb_base_addr; int /*<<< orphan*/  locality; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TPM_GLOBAL_INT_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct tpm_tis_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*,int) ; 
 int FUNC4 (struct tpm_tis_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_tis_data*,int,int) ; 

void FUNC6(struct tpm_chip *chip)
{
	struct tpm_tis_data *priv = FUNC1(&chip->dev);
	u32 reg = FUNC0(priv->locality);
	u32 interrupt;
	int rc;

	FUNC3(chip, true);

	rc = FUNC4(priv, reg, &interrupt);
	if (rc < 0)
		interrupt = 0;

	FUNC5(priv, reg, ~TPM_GLOBAL_INT_ENABLE & interrupt);

	FUNC3(chip, false);

	if (priv->ilb_base_addr)
		FUNC2(priv->ilb_base_addr);
}