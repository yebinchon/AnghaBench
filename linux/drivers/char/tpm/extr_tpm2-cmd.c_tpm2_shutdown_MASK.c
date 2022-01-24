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
typedef  int /*<<< orphan*/  u16 ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM2_CC_SHUTDOWN ; 
 int /*<<< orphan*/  TPM2_ST_NO_SESSIONS ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*) ; 
 int FUNC2 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct tpm_chip *chip, u16 shutdown_type)
{
	struct tpm_buf buf;
	int rc;

	rc = FUNC2(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_SHUTDOWN);
	if (rc)
		return;
	FUNC0(&buf, shutdown_type);
	FUNC3(chip, &buf, 0, "stopping the TPM");
	FUNC1(&buf);
}