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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct trusted_key_payload {int key_len; int /*<<< orphan*/  migratable; int /*<<< orphan*/  key; } ;
struct trusted_key_options {int /*<<< orphan*/  blobauth; scalar_t__ policyhandle; } ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EFAULT ; 
 int EPERM ; 
 int MAX_KEY_SIZE ; 
 int MIN_KEY_SIZE ; 
 int /*<<< orphan*/  TPM2_CC_UNSEAL ; 
 scalar_t__ TPM2_RS_PW ; 
 int /*<<< orphan*/  TPM2_SA_CONTINUE_SESSION ; 
 int /*<<< orphan*/  TPM2_ST_SESSIONS ; 
 int /*<<< orphan*/  TPM_DIGEST_SIZE ; 
 int TPM_HEADER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_buf*) ; 
 int FUNC5 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tpm_buf*) ; 
 int FUNC7 (struct tpm_chip*,struct tpm_buf*,int,char*) ; 

__attribute__((used)) static int FUNC8(struct tpm_chip *chip,
			   struct trusted_key_payload *payload,
			   struct trusted_key_options *options,
			   u32 blob_handle)
{
	struct tpm_buf buf;
	u16 data_len;
	u8 *data;
	int rc;

	rc = FUNC5(&buf, TPM2_ST_SESSIONS, TPM2_CC_UNSEAL);
	if (rc)
		return rc;

	FUNC3(&buf, blob_handle);
	FUNC2(&buf,
			     options->policyhandle ?
			     options->policyhandle : TPM2_RS_PW,
			     NULL /* nonce */, 0,
			     TPM2_SA_CONTINUE_SESSION,
			     options->blobauth /* hmac */,
			     TPM_DIGEST_SIZE);

	rc = FUNC7(chip, &buf, 6, "unsealing");
	if (rc > 0)
		rc = -EPERM;

	if (!rc) {
		data_len = FUNC0(
			(__be16 *) &buf.data[TPM_HEADER_SIZE + 4]);
		if (data_len < MIN_KEY_SIZE ||  data_len > MAX_KEY_SIZE + 1) {
			rc = -EFAULT;
			goto out;
		}

		if (FUNC6(&buf) < TPM_HEADER_SIZE + 6 + data_len) {
			rc = -EFAULT;
			goto out;
		}
		data = &buf.data[TPM_HEADER_SIZE + 6];

		FUNC1(payload->key, data, data_len - 1);
		payload->key_len = data_len - 1;
		payload->migratable = data[data_len - 1];
	}

out:
	FUNC4(&buf);
	return rc;
}