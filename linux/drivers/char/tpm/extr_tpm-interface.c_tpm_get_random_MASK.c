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
typedef  int /*<<< orphan*/  u8 ;
struct tpm_chip {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 size_t TPM_MAX_RNG_DATA ; 
 int FUNC0 (struct tpm_chip*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct tpm_chip*,int /*<<< orphan*/ *,size_t) ; 
 struct tpm_chip* FUNC2 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 

int FUNC4(struct tpm_chip *chip, u8 *out, size_t max)
{
	int rc;

	if (!out || max > TPM_MAX_RNG_DATA)
		return -EINVAL;

	chip = FUNC2(chip);
	if (!chip)
		return -ENODEV;

	if (chip->flags & TPM_CHIP_FLAG_TPM2)
		rc = FUNC1(chip, out, max);
	else
		rc = FUNC0(chip, out, max);

	FUNC3(chip);
	return rc;
}