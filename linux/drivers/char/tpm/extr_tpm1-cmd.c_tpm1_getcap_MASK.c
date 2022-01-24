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
typedef  int u32 ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int /*<<< orphan*/ * data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  cap_t ;

/* Variables and functions */
 int TPM_CAP_FLAG ; 
 int TPM_CAP_FLAG_PERM ; 
 int TPM_CAP_FLAG_VOL ; 
 int TPM_CAP_PROP ; 
 int TPM_CAP_VERSION_1_1 ; 
 int TPM_CAP_VERSION_1_2 ; 
 int TPM_HEADER_SIZE ; 
 int /*<<< orphan*/  TPM_ORD_GET_CAP ; 
 int /*<<< orphan*/  TPM_TAG_RQU_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*) ; 
 int FUNC2 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpm_chip*,struct tpm_buf*,size_t,char const*) ; 

ssize_t FUNC4(struct tpm_chip *chip, u32 subcap_id, cap_t *cap,
		    const char *desc, size_t min_cap_length)
{
	struct tpm_buf buf;
	int rc;

	rc = FUNC2(&buf, TPM_TAG_RQU_COMMAND, TPM_ORD_GET_CAP);
	if (rc)
		return rc;

	if (subcap_id == TPM_CAP_VERSION_1_1 ||
	    subcap_id == TPM_CAP_VERSION_1_2) {
		FUNC0(&buf, subcap_id);
		FUNC0(&buf, 0);
	} else {
		if (subcap_id == TPM_CAP_FLAG_PERM ||
		    subcap_id == TPM_CAP_FLAG_VOL)
			FUNC0(&buf, TPM_CAP_FLAG);
		else
			FUNC0(&buf, TPM_CAP_PROP);

		FUNC0(&buf, 4);
		FUNC0(&buf, subcap_id);
	}
	rc = FUNC3(chip, &buf, min_cap_length, desc);
	if (!rc)
		*cap = *(cap_t *)&buf.data[TPM_HEADER_SIZE + 4];
	FUNC1(&buf);
	return rc;
}