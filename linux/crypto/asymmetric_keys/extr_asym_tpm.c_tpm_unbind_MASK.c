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
typedef  int uint32_t ;
struct tpm_buf {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int SHA1_DIGEST_SIZE ; 
 scalar_t__ TPM_DATA_OFFSET ; 
 int TPM_NONCE_SIZE ; 
 int TPM_ORD_UNBIND ; 
 int /*<<< orphan*/  TPM_TAG_RQU_AUTH1_COMMAND ; 
 int TPM_UNBIND_SIZE ; 
 int FUNC2 (unsigned char*,unsigned char*,int,unsigned char*,unsigned char*,unsigned char,int,int*,int,int*,int,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int,unsigned char*,unsigned char*,int,int,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (struct tpm_buf*,int*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tpm_buf*,unsigned char) ; 
 int /*<<< orphan*/  FUNC12 (struct tpm_buf*,unsigned char const*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct tpm_buf *tb,
			uint32_t keyhandle, unsigned char *keyauth,
			const unsigned char *blob, uint32_t bloblen,
			void *out, uint32_t outlen)
{
	unsigned char nonceodd[TPM_NONCE_SIZE];
	unsigned char enonce[TPM_NONCE_SIZE];
	unsigned char authdata[SHA1_DIGEST_SIZE];
	uint32_t authhandle = 0;
	unsigned char cont = 0;
	uint32_t ordinal;
	uint32_t datalen;
	int ret;

	ordinal = FUNC4(TPM_ORD_UNBIND);
	datalen = FUNC4(bloblen);

	/* session for loading the key */
	ret = FUNC7(tb, &authhandle, enonce);
	if (ret < 0) {
		FUNC8("oiap failed (%d)\n", ret);
		return ret;
	}

	/* generate odd nonce */
	ret = FUNC13(NULL, nonceodd, TPM_NONCE_SIZE);
	if (ret < 0) {
		FUNC8("tpm_get_random failed (%d)\n", ret);
		return ret;
	}

	/* calculate authorization HMAC value */
	ret = FUNC2(authdata, keyauth, SHA1_DIGEST_SIZE, enonce,
			   nonceodd, cont, sizeof(uint32_t), &ordinal,
			   sizeof(uint32_t), &datalen,
			   bloblen, blob, 0, 0);
	if (ret < 0)
		return ret;

	/* build the request buffer */
	FUNC0(tb);
	FUNC9(tb, TPM_TAG_RQU_AUTH1_COMMAND);
	FUNC10(tb, TPM_UNBIND_SIZE + bloblen);
	FUNC10(tb, TPM_ORD_UNBIND);
	FUNC10(tb, keyhandle);
	FUNC10(tb, bloblen);
	FUNC12(tb, blob, bloblen);
	FUNC10(tb, authhandle);
	FUNC12(tb, nonceodd, TPM_NONCE_SIZE);
	FUNC11(tb, cont);
	FUNC12(tb, authdata, SHA1_DIGEST_SIZE);

	ret = FUNC14(tb->data, MAX_BUF_SIZE);
	if (ret < 0) {
		FUNC8("authhmac failed (%d)\n", ret);
		return ret;
	}

	datalen = FUNC1(tb->data, TPM_DATA_OFFSET);

	ret = FUNC3(tb->data, ordinal, nonceodd,
			     keyauth, SHA1_DIGEST_SIZE,
			     sizeof(uint32_t), TPM_DATA_OFFSET,
			     datalen, TPM_DATA_OFFSET + sizeof(uint32_t),
			     0, 0);
	if (ret < 0) {
		FUNC8("TSS_checkhmac1 failed (%d)\n", ret);
		return ret;
	}

	FUNC5(out, tb->data + TPM_DATA_OFFSET + sizeof(uint32_t),
	       FUNC6(outlen, datalen));

	return datalen;
}