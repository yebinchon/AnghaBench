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
struct tpm_chip {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int TPM2_RC_INITIALIZE ; 
 int FUNC0 (struct tpm_chip*) ; 
 int FUNC1 (struct tpm_chip*) ; 
 int FUNC2 (struct tpm_chip*) ; 
 int FUNC3 (struct tpm_chip*) ; 

int FUNC4(struct tpm_chip *chip)
{
	int rc;

	rc = FUNC2(chip);
	if (rc)
		goto out;

	rc = FUNC0(chip);
	if (rc && rc != TPM2_RC_INITIALIZE)
		goto out;

	if (rc == TPM2_RC_INITIALIZE) {
		rc = FUNC3(chip);
		if (rc)
			goto out;

		rc = FUNC0(chip);
		if (rc)
			goto out;
	}

	rc = FUNC1(chip);

out:
	if (rc > 0)
		rc = -ENODEV;
	return rc;
}