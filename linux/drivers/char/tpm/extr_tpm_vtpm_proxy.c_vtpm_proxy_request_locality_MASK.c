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
struct tpm_header {int /*<<< orphan*/  return_code; } ;
struct tpm_chip {int flags; int /*<<< orphan*/  dev; } ;
struct tpm_buf {scalar_t__ data; } ;
struct proxy_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_DRIVER_COMMAND ; 
 int /*<<< orphan*/  TPM2_CC_SET_LOCALITY ; 
 int /*<<< orphan*/  TPM2_ST_SESSIONS ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int /*<<< orphan*/  TPM_ORD_SET_LOCALITY ; 
 int /*<<< orphan*/  TPM_TAG_RQU_COMMAND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct proxy_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_buf*) ; 
 int FUNC4 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct tpm_chip *chip, int locality)
{
	struct tpm_buf buf;
	int rc;
	const struct tpm_header *header;
	struct proxy_dev *proxy_dev = FUNC1(&chip->dev);

	if (chip->flags & TPM_CHIP_FLAG_TPM2)
		rc = FUNC4(&buf, TPM2_ST_SESSIONS,
				  TPM2_CC_SET_LOCALITY);
	else
		rc = FUNC4(&buf, TPM_TAG_RQU_COMMAND,
				  TPM_ORD_SET_LOCALITY);
	if (rc)
		return rc;
	FUNC2(&buf, locality);

	proxy_dev->state |= STATE_DRIVER_COMMAND;

	rc = FUNC5(chip, &buf, 0, "attempting to set locality");

	proxy_dev->state &= ~STATE_DRIVER_COMMAND;

	if (rc < 0) {
		locality = rc;
		goto out;
	}

	header = (const struct tpm_header *)buf.data;
	rc = FUNC0(header->return_code);
	if (rc)
		locality = -1;

out:
	FUNC3(&buf);

	return locality;
}