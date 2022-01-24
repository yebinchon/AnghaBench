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
 int /*<<< orphan*/  TPM2_CC_SELF_TEST ; 
 int TPM2_RC_INITIALIZE ; 
 int TPM2_RC_SUCCESS ; 
 int TPM2_RC_TESTING ; 
 int /*<<< orphan*/  TPM2_ST_NO_SESSIONS ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*) ; 
 int FUNC2 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip)
{
	struct tpm_buf buf;
	int full;
	int rc;

	for (full = 0; full < 2; full++) {
		rc = FUNC2(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_SELF_TEST);
		if (rc)
			return rc;

		FUNC0(&buf, full);
		rc = FUNC3(chip, &buf, 0,
				      "attempting the self test");
		FUNC1(&buf);

		if (rc == TPM2_RC_TESTING)
			rc = TPM2_RC_SUCCESS;
		if (rc == TPM2_RC_INITIALIZE || rc == TPM2_RC_SUCCESS)
			return rc;
	}

	return rc;
}