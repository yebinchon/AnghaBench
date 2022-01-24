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
typedef  size_t u32 ;
struct tpm_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout_c; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  locality; } ;

/* Variables and functions */
 int EIO ; 
 int ETIME ; 
 int /*<<< orphan*/  SLEEP_DURATION_RESET_HI ; 
 int /*<<< orphan*/  SLEEP_DURATION_RESET_LOW ; 
 size_t TPM_HEADER_SIZE ; 
 int TPM_STS_DATA_AVAIL ; 
 int /*<<< orphan*/  TPM_STS_VALID ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct tpm_chip*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ tpm_dev ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct tpm_chip *chip, u8 *buf, size_t count)
{
	int size = 0;
	int status;
	u32 expected;

	if (count < TPM_HEADER_SIZE) {
		size = -EIO;
		goto out;
	}

	/* read first 10 bytes, including tag, paramsize, and result */
	size = FUNC2(chip, buf, TPM_HEADER_SIZE);
	if (size < TPM_HEADER_SIZE) {
		FUNC1(&chip->dev, "Unable to read header\n");
		goto out;
	}

	expected = FUNC0(*(__be32 *)(buf + 2));
	if (((size_t) expected > count) || (expected < TPM_HEADER_SIZE)) {
		size = -EIO;
		goto out;
	}

	size += FUNC2(chip, &buf[TPM_HEADER_SIZE],
			  expected - TPM_HEADER_SIZE);
	if (size < expected) {
		FUNC1(&chip->dev, "Unable to read remainder of result\n");
		size = -ETIME;
		goto out;
	}

	FUNC6(chip, TPM_STS_VALID, chip->timeout_c, &status);
	if (status & TPM_STS_DATA_AVAIL) {	/* retry? */
		FUNC1(&chip->dev, "Error left over data\n");
		size = -EIO;
		goto out;
	}

out:
	FUNC4(chip);
	/* The TPM needs some time to clean up here,
	 * so we sleep rather than keeping the bus busy
	 */
	FUNC5(SLEEP_DURATION_RESET_LOW, SLEEP_DURATION_RESET_HI);
	FUNC3(chip, tpm_dev.locality, 0);
	return size;
}