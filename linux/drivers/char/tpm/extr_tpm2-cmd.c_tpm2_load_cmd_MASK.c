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
struct trusted_key_payload {int blob_len; int /*<<< orphan*/ * blob; } ;
struct trusted_key_options {int /*<<< orphan*/  keyauth; int /*<<< orphan*/  keyhandle; } ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int flags; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int E2BIG ; 
 int EPERM ; 
 int /*<<< orphan*/  TPM2_CC_LOAD ; 
 int /*<<< orphan*/  TPM2_RS_PW ; 
 int /*<<< orphan*/  TPM2_ST_SESSIONS ; 
 int TPM_BUF_OVERFLOW ; 
 int /*<<< orphan*/  TPM_DIGEST_SIZE ; 
 size_t TPM_HEADER_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_buf*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_buf*) ; 
 int FUNC6 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tpm_chip*,struct tpm_buf*,int,char*) ; 

__attribute__((used)) static int FUNC8(struct tpm_chip *chip,
			 struct trusted_key_payload *payload,
			 struct trusted_key_options *options,
			 u32 *blob_handle)
{
	struct tpm_buf buf;
	unsigned int private_len;
	unsigned int public_len;
	unsigned int blob_len;
	int rc;

	private_len = FUNC0((__be16 *) &payload->blob[0]);
	if (private_len > (payload->blob_len - 2))
		return -E2BIG;

	public_len = FUNC0((__be16 *) &payload->blob[2 + private_len]);
	blob_len = private_len + public_len + 4;
	if (blob_len > payload->blob_len)
		return -E2BIG;

	rc = FUNC6(&buf, TPM2_ST_SESSIONS, TPM2_CC_LOAD);
	if (rc)
		return rc;

	FUNC4(&buf, options->keyhandle);
	FUNC2(&buf, TPM2_RS_PW,
			     NULL /* nonce */, 0,
			     0 /* session_attributes */,
			     options->keyauth /* hmac */,
			     TPM_DIGEST_SIZE);

	FUNC3(&buf, payload->blob, blob_len);

	if (buf.flags & TPM_BUF_OVERFLOW) {
		rc = -E2BIG;
		goto out;
	}

	rc = FUNC7(chip, &buf, 4, "loading blob");
	if (!rc)
		*blob_handle = FUNC1(
			(__be32 *) &buf.data[TPM_HEADER_SIZE]);

out:
	FUNC5(&buf);

	if (rc > 0)
		rc = -EPERM;

	return rc;
}