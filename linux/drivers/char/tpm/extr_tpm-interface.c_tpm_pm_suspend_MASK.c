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
struct tpm_chip {int flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  TPM2_SU_STATE ; 
 int TPM_CHIP_FLAG_ALWAYS_POWERED ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 struct tpm_chip* FUNC0 (struct device*) ; 
 int FUNC1 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 int /*<<< orphan*/  tpm_suspend_pcr ; 

int FUNC5(struct device *dev)
{
	struct tpm_chip *chip = FUNC0(dev);
	int rc = 0;

	if (!chip)
		return -ENODEV;

	if (chip->flags & TPM_CHIP_FLAG_ALWAYS_POWERED)
		return 0;

	if (!FUNC3(chip)) {
		if (chip->flags & TPM_CHIP_FLAG_TPM2)
			FUNC2(chip, TPM2_SU_STATE);
		else
			rc = FUNC1(chip, tpm_suspend_pcr);

		FUNC4(chip);
	}

	return rc;
}