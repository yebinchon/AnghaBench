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
struct tpm_space {int dummy; } ;
struct tpm_header {void* length; void* return_code; } ;
struct tpm_chip {struct tpm_space work_space; } ;
struct tpm2_cap_handles {void* count; void** handles; void* capability; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EFAULT ; 
 int TPM2_CAP_HANDLES ; 
 scalar_t__ TPM2_CC_GET_CAPABILITY ; 
#define  TPM2_HT_TRANSIENT 128 
 int TPM2_RC_SUCCESS ; 
 int TPM_HEADER_SIZE ; 
 int FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct tpm_space*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip, u32 cc, u8 *rsp,
				  size_t len)
{
	struct tpm_space *space = &chip->work_space;
	struct tpm_header *header = (struct tpm_header *)rsp;
	struct tpm2_cap_handles *data;
	u32 phandle;
	u32 phandle_type;
	u32 vhandle;
	int i;
	int j;

	if (cc != TPM2_CC_GET_CAPABILITY ||
	    FUNC0(header->return_code) != TPM2_RC_SUCCESS) {
		return 0;
	}

	if (len < TPM_HEADER_SIZE + 9)
		return -EFAULT;

	data = (void *)&rsp[TPM_HEADER_SIZE];
	if (FUNC0(data->capability) != TPM2_CAP_HANDLES)
		return 0;

	if (len != TPM_HEADER_SIZE + 9 + 4 * FUNC0(data->count))
		return -EFAULT;

	for (i = 0, j = 0; i < FUNC0(data->count); i++) {
		phandle = FUNC1((__be32 *)&data->handles[i]);
		phandle_type = phandle & 0xFF000000;

		switch (phandle_type) {
		case TPM2_HT_TRANSIENT:
			vhandle = FUNC3(space, phandle, false);
			if (!vhandle)
				break;

			data->handles[j] = FUNC2(vhandle);
			j++;
			break;

		default:
			data->handles[j] = FUNC2(phandle);
			j++;
			break;
		}

	}

	header->length = FUNC2(TPM_HEADER_SIZE + 9 + 4 * j);
	data->count = FUNC2(j);
	return 0;
}