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
struct trusted_key_payload {int dummy; } ;
struct trusted_key_options {int dummy; } ;
struct tpm_chip {int flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int FUNC0 (struct tpm_chip*,struct trusted_key_payload*,struct trusted_key_options*) ; 
 struct tpm_chip* FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*) ; 

int FUNC3(struct tpm_chip *chip,
		       struct trusted_key_payload *payload,
		       struct trusted_key_options *options)
{
	int rc;

	chip = FUNC1(chip);
	if (!chip || !(chip->flags & TPM_CHIP_FLAG_TPM2))
		return -ENODEV;

	rc = FUNC0(chip, payload, options);

	FUNC2(chip);

	return rc;
}