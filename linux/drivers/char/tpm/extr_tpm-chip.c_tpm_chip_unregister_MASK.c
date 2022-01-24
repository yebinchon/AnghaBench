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
struct tpm_chip {int flags; int /*<<< orphan*/  devs; int /*<<< orphan*/  cdevs; int /*<<< orphan*/  hwrng; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HW_RANDOM_TPM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_chip*) ; 

void FUNC6(struct tpm_chip *chip)
{
	FUNC5(chip);
	if (FUNC0(CONFIG_HW_RANDOM_TPM))
		FUNC2(&chip->hwrng);
	FUNC3(chip);
	if (chip->flags & TPM_CHIP_FLAG_TPM2)
		FUNC1(&chip->cdevs, &chip->devs);
	FUNC4(chip);
}