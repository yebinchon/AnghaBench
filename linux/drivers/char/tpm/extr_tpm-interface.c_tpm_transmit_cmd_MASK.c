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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct tpm_buf {scalar_t__ data; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EFAULT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int TPM2_RC_TESTING ; 
 int TPM_ERR_DEACTIVATED ; 
 int TPM_ERR_DISABLED ; 
 scalar_t__ TPM_HEADER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 scalar_t__ FUNC2 (struct tpm_chip*,scalar_t__,int /*<<< orphan*/ ) ; 

ssize_t FUNC3(struct tpm_chip *chip, struct tpm_buf *buf,
			 size_t min_rsp_body_length, const char *desc)
{
	const struct tpm_header *header = (struct tpm_header *)buf->data;
	int err;
	ssize_t len;

	len = FUNC2(chip, buf->data, PAGE_SIZE);
	if (len <  0)
		return len;

	err = FUNC0(header->return_code);
	if (err != 0 && err != TPM_ERR_DISABLED && err != TPM_ERR_DEACTIVATED
	    && err != TPM2_RC_TESTING && desc)
		FUNC1(&chip->dev, "A TPM error (%d) occurred %s\n", err,
			desc);
	if (err)
		return err;

	if (len < min_rsp_body_length + TPM_HEADER_SIZE)
		return -EFAULT;

	return 0;
}