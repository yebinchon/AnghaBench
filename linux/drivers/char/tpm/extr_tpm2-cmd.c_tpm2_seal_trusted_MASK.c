#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct trusted_key_payload {unsigned int blob_len; int /*<<< orphan*/  blob; int /*<<< orphan*/  migratable; scalar_t__ key_len; int /*<<< orphan*/  key; } ;
struct trusted_key_options {scalar_t__ hash; scalar_t__ policydigest_len; int /*<<< orphan*/  policydigest; int /*<<< orphan*/  blobauth; int /*<<< orphan*/  keyauth; int /*<<< orphan*/  keyhandle; } ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int flags; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {scalar_t__ crypto_id; scalar_t__ tpm_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int E2BIG ; 
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 unsigned int MAX_BLOB_SIZE ; 
 int /*<<< orphan*/  TPM2_CC_CREATE ; 
 int /*<<< orphan*/  TPM2_OA_USER_WITH_AUTH ; 
 scalar_t__ TPM2_RC_HASH ; 
 int /*<<< orphan*/  TPM2_RS_PW ; 
 int /*<<< orphan*/  TPM2_ST_SESSIONS ; 
 scalar_t__ TPM_ALG_KEYEDHASH ; 
 scalar_t__ TPM_ALG_NULL ; 
 int TPM_BUF_OVERFLOW ; 
 scalar_t__ TPM_DIGEST_SIZE ; 
 size_t TPM_HEADER_SIZE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* tpm2_hash_map ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_buf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tpm_buf*) ; 
 int FUNC10 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (struct tpm_buf*) ; 
 int FUNC12 (struct tpm_chip*,struct tpm_buf*,int,char*) ; 

int FUNC13(struct tpm_chip *chip,
		      struct trusted_key_payload *payload,
		      struct trusted_key_options *options)
{
	unsigned int blob_len;
	struct tpm_buf buf;
	u32 hash;
	int i;
	int rc;

	for (i = 0; i < FUNC0(tpm2_hash_map); i++) {
		if (options->hash == tpm2_hash_map[i].crypto_id) {
			hash = tpm2_hash_map[i].tpm_id;
			break;
		}
	}

	if (i == FUNC0(tpm2_hash_map))
		return -EINVAL;

	rc = FUNC10(&buf, TPM2_ST_SESSIONS, TPM2_CC_CREATE);
	if (rc)
		return rc;

	FUNC7(&buf, options->keyhandle);
	FUNC3(&buf, TPM2_RS_PW,
			     NULL /* nonce */, 0,
			     0 /* session_attributes */,
			     options->keyauth /* hmac */,
			     TPM_DIGEST_SIZE);

	/* sensitive */
	FUNC6(&buf, 4 + TPM_DIGEST_SIZE + payload->key_len + 1);

	FUNC6(&buf, TPM_DIGEST_SIZE);
	FUNC5(&buf, options->blobauth, TPM_DIGEST_SIZE);
	FUNC6(&buf, payload->key_len + 1);
	FUNC5(&buf, payload->key, payload->key_len);
	FUNC8(&buf, payload->migratable);

	/* public */
	FUNC6(&buf, 14 + options->policydigest_len);
	FUNC6(&buf, TPM_ALG_KEYEDHASH);
	FUNC6(&buf, hash);

	/* policy */
	if (options->policydigest_len) {
		FUNC7(&buf, 0);
		FUNC6(&buf, options->policydigest_len);
		FUNC5(&buf, options->policydigest,
			       options->policydigest_len);
	} else {
		FUNC7(&buf, TPM2_OA_USER_WITH_AUTH);
		FUNC6(&buf, 0);
	}

	/* public parameters */
	FUNC6(&buf, TPM_ALG_NULL);
	FUNC6(&buf, 0);

	/* outside info */
	FUNC6(&buf, 0);

	/* creation PCR */
	FUNC7(&buf, 0);

	if (buf.flags & TPM_BUF_OVERFLOW) {
		rc = -E2BIG;
		goto out;
	}

	rc = FUNC12(chip, &buf, 4, "sealing data");
	if (rc)
		goto out;

	blob_len = FUNC1((__be32 *) &buf.data[TPM_HEADER_SIZE]);
	if (blob_len > MAX_BLOB_SIZE) {
		rc = -E2BIG;
		goto out;
	}
	if (FUNC11(&buf) < TPM_HEADER_SIZE + 4 + blob_len) {
		rc = -EFAULT;
		goto out;
	}

	FUNC2(payload->blob, &buf.data[TPM_HEADER_SIZE + 4], blob_len);
	payload->blob_len = blob_len;

out:
	FUNC9(&buf);

	if (rc > 0) {
		if (FUNC4(rc) == TPM2_RC_HASH)
			rc = -EINVAL;
		else
			rc = -EPERM;
	}

	return rc;
}