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
struct tpm2_get_cap_out {int /*<<< orphan*/  value; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int TPM2_CAP_TPM_PROPERTIES ; 
 int /*<<< orphan*/  TPM2_CC_GET_CAPABILITY ; 
 int /*<<< orphan*/  TPM2_ST_NO_SESSIONS ; 
 size_t TPM_HEADER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*) ; 
 int FUNC3 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ssize_t FUNC5(struct tpm_chip *chip, u32 property_id,  u32 *value,
			const char *desc)
{
	struct tpm2_get_cap_out *out;
	struct tpm_buf buf;
	int rc;

	rc = FUNC3(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_GET_CAPABILITY);
	if (rc)
		return rc;
	FUNC1(&buf, TPM2_CAP_TPM_PROPERTIES);
	FUNC1(&buf, property_id);
	FUNC1(&buf, 1);
	rc = FUNC4(chip, &buf, 0, NULL);
	if (!rc) {
		out = (struct tpm2_get_cap_out *)
			&buf.data[TPM_HEADER_SIZE];
		*value = FUNC0(out->value);
	}
	FUNC2(&buf);
	return rc;
}