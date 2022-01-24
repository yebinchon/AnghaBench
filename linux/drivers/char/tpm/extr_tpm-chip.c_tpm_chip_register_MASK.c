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
struct tpm_chip {int /*<<< orphan*/  hwrng; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HW_RANDOM_TPM ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tpm_chip*) ; 
 int FUNC3 (struct tpm_chip*) ; 
 int FUNC4 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_chip*) ; 
 int FUNC6 (struct tpm_chip*) ; 
 int FUNC7 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_chip*) ; 
 int FUNC9 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct tpm_chip*) ; 
 int FUNC12 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct tpm_chip*) ; 

int FUNC14(struct tpm_chip *chip)
{
	int rc;

	rc = FUNC9(chip);
	if (rc)
		return rc;
	rc = FUNC6(chip);
	if (rc) {
		FUNC10(chip);
		return rc;
	}

	rc = FUNC12(chip);
	FUNC10(chip);
	if (rc)
		return rc;

	FUNC13(chip);

	rc = FUNC7(chip);
	if (rc != 0 && rc != -ENODEV)
		return rc;

	FUNC5(chip);

	rc = FUNC3(chip);
	if (rc)
		goto out_ppi;

	rc = FUNC2(chip);
	if (rc)
		goto out_hwrng;

	rc = FUNC4(chip);
	if (rc) {
		FUNC11(chip);
		return rc;
	}

	return 0;

out_hwrng:
	if (FUNC0(CONFIG_HW_RANDOM_TPM))
		FUNC1(&chip->hwrng);
out_ppi:
	FUNC8(chip);

	return rc;
}