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
typedef  scalar_t__ u32 ;
struct tpm_header {int /*<<< orphan*/  return_code; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  save ;

/* Variables and functions */
 scalar_t__ TPM2_CC_SELF_TEST ; 
 unsigned int TPM2_DURATION_LONG ; 
 unsigned int TPM2_DURATION_SHORT ; 
 scalar_t__ TPM2_RC_RETRY ; 
 scalar_t__ TPM2_RC_TESTING ; 
 int /*<<< orphan*/  TPM_HEADER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 size_t FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (struct tpm_chip*,int /*<<< orphan*/ *,size_t) ; 

ssize_t FUNC6(struct tpm_chip *chip, u8 *buf, size_t bufsiz)
{
	struct tpm_header *header = (struct tpm_header *)buf;
	/* space for header and handles */
	u8 save[TPM_HEADER_SIZE + 3*sizeof(u32)];
	unsigned int delay_msec = TPM2_DURATION_SHORT;
	u32 rc = 0;
	ssize_t ret;
	const size_t save_size = FUNC3(sizeof(save), bufsiz);
	/* the command code is where the return code will be */
	u32 cc = FUNC0(header->return_code);

	/*
	 * Subtlety here: if we have a space, the handles will be
	 * transformed, so when we restore the header we also have to
	 * restore the handles.
	 */
	FUNC2(save, buf, save_size);

	for (;;) {
		ret = FUNC5(chip, buf, bufsiz);
		if (ret < 0)
			break;
		rc = FUNC0(header->return_code);
		if (rc != TPM2_RC_RETRY && rc != TPM2_RC_TESTING)
			break;
		/*
		 * return immediately if self test returns test
		 * still running to shorten boot time.
		 */
		if (rc == TPM2_RC_TESTING && cc == TPM2_CC_SELF_TEST)
			break;

		if (delay_msec > TPM2_DURATION_LONG) {
			if (rc == TPM2_RC_RETRY)
				FUNC1(&chip->dev, "in retry loop\n");
			else
				FUNC1(&chip->dev,
					"self test is still running\n");
			break;
		}
		FUNC4(delay_msec);
		delay_msec *= 2;
		FUNC2(buf, save, save_size);
	}
	return ret;
}