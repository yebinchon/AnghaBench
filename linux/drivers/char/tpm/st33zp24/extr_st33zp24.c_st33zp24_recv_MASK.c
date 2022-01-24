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
typedef  size_t u32 ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ETIME ; 
 size_t TPM_HEADER_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct tpm_chip*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip, unsigned char *buf,
			    size_t count)
{
	int size = 0;
	u32 expected;

	if (!chip)
		return -EBUSY;

	if (count < TPM_HEADER_SIZE) {
		size = -EIO;
		goto out;
	}

	size = FUNC2(chip, buf, TPM_HEADER_SIZE);
	if (size < TPM_HEADER_SIZE) {
		FUNC1(&chip->dev, "Unable to read header\n");
		goto out;
	}

	expected = FUNC0(*(__be32 *)(buf + 2));
	if (expected > count || expected < TPM_HEADER_SIZE) {
		size = -EIO;
		goto out;
	}

	size += FUNC2(chip, &buf[TPM_HEADER_SIZE],
			expected - TPM_HEADER_SIZE);
	if (size < expected) {
		FUNC1(&chip->dev, "Unable to read remainder of result\n");
		size = -ETIME;
	}

out:
	FUNC4(chip);
	FUNC3(chip);
	return size;
}