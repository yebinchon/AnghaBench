#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * seqops; struct tpm_chip* chip; } ;
struct TYPE_3__ {int /*<<< orphan*/ * seqops; struct tpm_chip* chip; } ;
struct tpm_chip {int flags; int /*<<< orphan*/ ** bios_dir; TYPE_2__ ascii_log_seqops; TYPE_1__ bin_log_seqops; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFI_TCG2_EVENT_LOG_FORMAT_TCG_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (char*,int,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpm1_ascii_b_measurements_seqops ; 
 int /*<<< orphan*/  tpm1_binary_b_measurements_seqops ; 
 int /*<<< orphan*/  tpm2_binary_b_measurements_seqops ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_chip*) ; 
 int /*<<< orphan*/  tpm_bios_measurements_ops ; 
 int FUNC6 (struct tpm_chip*) ; 

int FUNC7(struct tpm_chip *chip)
{
	const char *name = FUNC2(&chip->dev);
	unsigned int cnt;
	int log_version;
	int rc = 0;

	rc = FUNC6(chip);
	if (rc < 0)
		return rc;
	log_version = rc;

	cnt = 0;
	chip->bios_dir[cnt] = FUNC3(name, NULL);
	/* NOTE: securityfs_create_dir can return ENODEV if securityfs is
	 * compiled out. The caller should ignore the ENODEV return code.
	 */
	if (FUNC0(chip->bios_dir[cnt]))
		goto err;
	cnt++;

	chip->bin_log_seqops.chip = chip;
	if (log_version == EFI_TCG2_EVENT_LOG_FORMAT_TCG_2)
		chip->bin_log_seqops.seqops =
			&tpm2_binary_b_measurements_seqops;
	else
		chip->bin_log_seqops.seqops =
			&tpm1_binary_b_measurements_seqops;


	chip->bios_dir[cnt] =
	    FUNC4("binary_bios_measurements",
				   0440, chip->bios_dir[0],
				   (void *)&chip->bin_log_seqops,
				   &tpm_bios_measurements_ops);
	if (FUNC0(chip->bios_dir[cnt]))
		goto err;
	cnt++;

	if (!(chip->flags & TPM_CHIP_FLAG_TPM2)) {

		chip->ascii_log_seqops.chip = chip;
		chip->ascii_log_seqops.seqops =
			&tpm1_ascii_b_measurements_seqops;

		chip->bios_dir[cnt] =
			FUNC4("ascii_bios_measurements",
					       0440, chip->bios_dir[0],
					       (void *)&chip->ascii_log_seqops,
					       &tpm_bios_measurements_ops);
		if (FUNC0(chip->bios_dir[cnt]))
			goto err;
		cnt++;
	}

	return 0;

err:
	rc = FUNC1(chip->bios_dir[cnt]);
	chip->bios_dir[cnt] = NULL;
	FUNC5(chip);
	return rc;
}