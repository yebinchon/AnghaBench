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
typedef  int /*<<< orphan*/  u32 ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ TPM_DIGEST_SIZE ; 
 size_t TPM_HEADER_SIZE ; 
 int /*<<< orphan*/  TPM_ORD_PCRREAD ; 
 int /*<<< orphan*/  TPM_TAG_RQU_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*) ; 
 int FUNC3 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tpm_buf*) ; 
 int FUNC5 (struct tpm_chip*,struct tpm_buf*,scalar_t__,char*) ; 

int FUNC6(struct tpm_chip *chip, u32 pcr_idx, u8 *res_buf)
{
	struct tpm_buf buf;
	int rc;

	rc = FUNC3(&buf, TPM_TAG_RQU_COMMAND, TPM_ORD_PCRREAD);
	if (rc)
		return rc;

	FUNC1(&buf, pcr_idx);

	rc = FUNC5(chip, &buf, TPM_DIGEST_SIZE,
			      "attempting to read a pcr value");
	if (rc)
		goto out;

	if (FUNC4(&buf) < TPM_DIGEST_SIZE) {
		rc = -EFAULT;
		goto out;
	}

	FUNC0(res_buf, &buf.data[TPM_HEADER_SIZE], TPM_DIGEST_SIZE);

out:
	FUNC2(&buf);
	return rc;
}