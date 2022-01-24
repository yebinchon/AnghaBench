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
struct tpm_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_ORD_CONTINUE_SELFTEST ; 
 int /*<<< orphan*/  TPM_TAG_RQU_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*) ; 
 int FUNC1 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct tpm_chip *chip)
{
	struct tpm_buf buf;
	int rc;

	rc = FUNC1(&buf, TPM_TAG_RQU_COMMAND, TPM_ORD_CONTINUE_SELFTEST);
	if (rc)
		return rc;

	rc = FUNC2(chip, &buf, 0, "continue selftest");
	FUNC0(&buf);
	return rc;
}