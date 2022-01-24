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
typedef  int /*<<< orphan*/  u32 ;
struct tpm_digest {int /*<<< orphan*/  digest; } ;
struct tpm_chip {int flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int FUNC0 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tpm_chip*,int /*<<< orphan*/ ,struct tpm_digest*,int /*<<< orphan*/ *) ; 
 struct tpm_chip* FUNC2 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 

int FUNC4(struct tpm_chip *chip, u32 pcr_idx,
		 struct tpm_digest *digest)
{
	int rc;

	chip = FUNC2(chip);
	if (!chip)
		return -ENODEV;

	if (chip->flags & TPM_CHIP_FLAG_TPM2)
		rc = FUNC1(chip, pcr_idx, digest, NULL);
	else
		rc = FUNC0(chip, pcr_idx, digest->digest);

	FUNC3(chip);
	return rc;
}