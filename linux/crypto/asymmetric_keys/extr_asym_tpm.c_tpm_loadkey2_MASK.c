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
struct tpm_buf {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_buf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  TPM_DATA_OFFSET ; 
 scalar_t__ TPM_LOADKEY2_SIZE ; 
 int TPM_NONCE_SIZE ; 
 scalar_t__ TPM_ORD_LOADKEY2 ; 
 int /*<<< orphan*/  TPM_TAG_RQU_AUTH1_COMMAND ; 
 int FUNC2 (unsigned char*,unsigned char*,int,unsigned char*,unsigned char*,unsigned char,int,scalar_t__*,int,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (struct tpm_buf*,scalar_t__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct tpm_buf*,unsigned char) ; 
 int /*<<< orphan*/  FUNC10 (struct tpm_buf*,unsigned char const*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct tpm_buf *tb,
			uint32_t keyhandle, unsigned char *keyauth,
			const unsigned char *keyblob, int keybloblen,
			uint32_t *newhandle)
{
	unsigned char nonceodd[TPM_NONCE_SIZE];
	unsigned char enonce[TPM_NONCE_SIZE];
	unsigned char authdata[SHA1_DIGEST_SIZE];
	uint32_t authhandle = 0;
	unsigned char cont = 0;
	uint32_t ordinal;
	int ret;

	ordinal = FUNC4(TPM_ORD_LOADKEY2);

	/* session for loading the key */
	ret = FUNC5(tb, &authhandle, enonce);
	if (ret < 0) {
		FUNC6("oiap failed (%d)\n", ret);
		return ret;
	}

	/* generate odd nonce */
	ret = FUNC11(NULL, nonceodd, TPM_NONCE_SIZE);
	if (ret < 0) {
		FUNC6("tpm_get_random failed (%d)\n", ret);
		return ret;
	}

	/* calculate authorization HMAC value */
	ret = FUNC2(authdata, keyauth, SHA1_DIGEST_SIZE, enonce,
			   nonceodd, cont, sizeof(uint32_t), &ordinal,
			   keybloblen, keyblob, 0, 0);
	if (ret < 0)
		return ret;

	/* build the request buffer */
	FUNC0(tb);
	FUNC7(tb, TPM_TAG_RQU_AUTH1_COMMAND);
	FUNC8(tb, TPM_LOADKEY2_SIZE + keybloblen);
	FUNC8(tb, TPM_ORD_LOADKEY2);
	FUNC8(tb, keyhandle);
	FUNC10(tb, keyblob, keybloblen);
	FUNC8(tb, authhandle);
	FUNC10(tb, nonceodd, TPM_NONCE_SIZE);
	FUNC9(tb, cont);
	FUNC10(tb, authdata, SHA1_DIGEST_SIZE);

	ret = FUNC12(tb->data, MAX_BUF_SIZE);
	if (ret < 0) {
		FUNC6("authhmac failed (%d)\n", ret);
		return ret;
	}

	ret = FUNC3(tb->data, ordinal, nonceodd, keyauth,
			     SHA1_DIGEST_SIZE, 0, 0);
	if (ret < 0) {
		FUNC6("TSS_checkhmac1 failed (%d)\n", ret);
		return ret;
	}

	*newhandle = FUNC1(tb->data, TPM_DATA_OFFSET);
	return 0;
}