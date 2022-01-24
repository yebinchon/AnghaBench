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
typedef  size_t u32 ;
struct tpm_tis_data {int /*<<< orphan*/  int_queue; } ;
struct tpm_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout_c; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int ETIME ; 
 size_t TPM_HEADER_SIZE ; 
 int TPM_STS_DATA_AVAIL ; 
 int /*<<< orphan*/  TPM_STS_VALID ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct tpm_tis_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tpm_chip*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 int FUNC5 (struct tpm_chip*) ; 
 scalar_t__ FUNC6 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct tpm_tis_data *priv = FUNC2(&chip->dev);
	int size = 0;
	int status;
	u32 expected;

	if (count < TPM_HEADER_SIZE) {
		size = -EIO;
		goto out;
	}

	size = FUNC3(chip, buf, TPM_HEADER_SIZE);
	/* read first 10 bytes, including tag, paramsize, and result */
	if (size < TPM_HEADER_SIZE) {
		FUNC1(&chip->dev, "Unable to read header\n");
		goto out;
	}

	expected = FUNC0(*(__be32 *) (buf + 2));
	if (expected > count || expected < TPM_HEADER_SIZE) {
		size = -EIO;
		goto out;
	}

	size += FUNC3(chip, &buf[TPM_HEADER_SIZE],
			  expected - TPM_HEADER_SIZE);
	if (size < expected) {
		FUNC1(&chip->dev, "Unable to read remainder of result\n");
		size = -ETIME;
		goto out;
	}

	if (FUNC6(chip, TPM_STS_VALID, chip->timeout_c,
				&priv->int_queue, false) < 0) {
		size = -ETIME;
		goto out;
	}
	status = FUNC5(chip);
	if (status & TPM_STS_DATA_AVAIL) {	/* retry? */
		FUNC1(&chip->dev, "Error left over data\n");
		size = -EIO;
		goto out;
	}

out:
	FUNC4(chip);
	return size;
}