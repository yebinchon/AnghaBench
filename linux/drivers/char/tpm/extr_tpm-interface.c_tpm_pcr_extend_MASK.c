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
struct tpm_digest {scalar_t__ alg_id; int /*<<< orphan*/  digest; } ;
struct tpm_chip {int nr_allocated_banks; int flags; TYPE_1__* allocated_banks; } ;
struct TYPE_2__ {scalar_t__ alg_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int FUNC0 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct tpm_chip*,int /*<<< orphan*/ ,struct tpm_digest*) ; 
 struct tpm_chip* FUNC2 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 

int FUNC4(struct tpm_chip *chip, u32 pcr_idx,
		   struct tpm_digest *digests)
{
	int rc;
	int i;

	chip = FUNC2(chip);
	if (!chip)
		return -ENODEV;

	for (i = 0; i < chip->nr_allocated_banks; i++) {
		if (digests[i].alg_id != chip->allocated_banks[i].alg_id) {
			rc = EINVAL;
			goto out;
		}
	}

	if (chip->flags & TPM_CHIP_FLAG_TPM2) {
		rc = FUNC1(chip, pcr_idx, digests);
		goto out;
	}

	rc = FUNC0(chip, pcr_idx, digests[0].digest,
			     "attempting extend a PCR value");

out:
	FUNC3(chip);
	return rc;
}