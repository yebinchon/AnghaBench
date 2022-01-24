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
typedef  int /*<<< orphan*/  u32 ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct tpm_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM2_CC_FLUSH_CONTEXT ; 
 int /*<<< orphan*/  TPM2_ST_NO_SESSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*) ; 
 int FUNC3 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct tpm_chip *chip, u32 handle)
{
	struct tpm_buf buf;
	int rc;

	rc = FUNC3(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_FLUSH_CONTEXT);
	if (rc) {
		FUNC0(&chip->dev, "0x%08x was not flushed, out of memory\n",
			 handle);
		return;
	}

	FUNC1(&buf, handle);

	FUNC4(chip, &buf, 0, "flushing context");
	FUNC2(&buf);
}