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
typedef  scalar_t__ uint32_t ;
struct tpm_key {scalar_t__ blob_len; struct tpm_key* blob; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct tpm_key* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct tpm_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_key*) ; 
 struct tpm_key* FUNC3 (void const*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct tpm_key* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

struct tpm_key *FUNC6(const void *blob, uint32_t blob_len)
{
	int r;
	struct tpm_key *tk;

	r = FUNC5(NULL);
	if (r < 0)
		goto error;

	/* We don't support TPM2 yet */
	if (r > 0) {
		r = -ENODEV;
		goto error;
	}

	r = -ENOMEM;
	tk = FUNC4(sizeof(struct tpm_key), GFP_KERNEL);
	if (!tk)
		goto error;

	tk->blob = FUNC3(blob, blob_len, GFP_KERNEL);
	if (!tk->blob)
		goto error_memdup;

	tk->blob_len = blob_len;

	r = FUNC1(tk);
	if (r < 0)
		goto error_extract;

	return tk;

error_extract:
	FUNC2(tk->blob);
	tk->blob_len = 0;
error_memdup:
	FUNC2(tk);
error:
	return FUNC0(r);
}