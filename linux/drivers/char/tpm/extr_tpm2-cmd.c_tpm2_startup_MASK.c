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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct tpm_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM2_CC_STARTUP ; 
 int /*<<< orphan*/  TPM2_ST_NO_SESSIONS ; 
 int /*<<< orphan*/  TPM2_SU_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*) ; 
 int FUNC3 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip)
{
	struct tpm_buf buf;
	int rc;

	FUNC0(&chip->dev, "starting up the TPM manually\n");

	rc = FUNC3(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_STARTUP);
	if (rc < 0)
		return rc;

	FUNC1(&buf, TPM2_SU_CLEAR);
	rc = FUNC4(chip, &buf, 0, "attempting to start the TPM");
	FUNC2(&buf);

	return rc;
}