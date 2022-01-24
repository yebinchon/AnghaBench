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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tpm_chip {void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * client; int /*<<< orphan*/  locality; struct tpm_chip* chip; int /*<<< orphan*/  chip_type; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct tpm_chip*) ; 
 int FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  SLB9635 ; 
 int /*<<< orphan*/  SLB9645 ; 
 int /*<<< orphan*/  TIS_LONG_TIMEOUT ; 
 int /*<<< orphan*/  TIS_SHORT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TPM_TIS_I2C_DID_VID_9635 ; 
 int TPM_TIS_I2C_DID_VID_9645 ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_chip*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct tpm_chip*) ; 
 TYPE_1__ tpm_dev ; 
 int /*<<< orphan*/  tpm_tis_i2c ; 
 struct tpm_chip* FUNC10 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	u32 vendor;
	int rc = 0;
	struct tpm_chip *chip;

	chip = FUNC10(dev, &tpm_tis_i2c);
	if (FUNC0(chip))
		return FUNC1(chip);

	/* Default timeouts */
	chip->timeout_a = FUNC6(TIS_SHORT_TIMEOUT);
	chip->timeout_b = FUNC6(TIS_LONG_TIMEOUT);
	chip->timeout_c = FUNC6(TIS_SHORT_TIMEOUT);
	chip->timeout_d = FUNC6(TIS_SHORT_TIMEOUT);

	if (FUNC8(chip, 0) != 0) {
		FUNC3(dev, "could not request locality\n");
		rc = -ENODEV;
		goto out_err;
	}

	/* read four bytes from DID_VID register */
	if (FUNC5(FUNC2(0), (u8 *)&vendor, 4) < 0) {
		FUNC3(dev, "could not read vendor id\n");
		rc = -EIO;
		goto out_release;
	}

	if (vendor == TPM_TIS_I2C_DID_VID_9645) {
		tpm_dev.chip_type = SLB9645;
	} else if (vendor == TPM_TIS_I2C_DID_VID_9635) {
		tpm_dev.chip_type = SLB9635;
	} else {
		FUNC3(dev, "vendor id did not match! ID was %08x\n", vendor);
		rc = -ENODEV;
		goto out_release;
	}

	FUNC4(dev, "1.2 TPM (device-id 0x%X)\n", vendor >> 16);

	tpm_dev.chip = chip;

	return FUNC9(chip);
out_release:
	FUNC7(chip, tpm_dev.locality, 1);
	tpm_dev.client = NULL;
out_err:
	return rc;
}