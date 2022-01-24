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
struct ppc_xts_ctx {int rounds; int /*<<< orphan*/  key_enc; int /*<<< orphan*/  key_dec; int /*<<< orphan*/  key_twk; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 130 
#define  AES_KEYSIZE_192 129 
#define  AES_KEYSIZE_256 128 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct ppc_xts_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm, const u8 *in_key,
		   unsigned int key_len)
{
	struct ppc_xts_ctx *ctx = FUNC0(tfm);
	int err;

	err = FUNC5(tfm, in_key, key_len);
	if (err)
		return err;

	key_len >>= 1;

	if (key_len != AES_KEYSIZE_128 &&
	    key_len != AES_KEYSIZE_192 &&
	    key_len != AES_KEYSIZE_256) {
		tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	switch (key_len) {
	case AES_KEYSIZE_128:
		ctx->rounds = 4;
		FUNC1(ctx->key_enc, in_key);
		FUNC1(ctx->key_twk, in_key + AES_KEYSIZE_128);
		break;
	case AES_KEYSIZE_192:
		ctx->rounds = 5;
		FUNC2(ctx->key_enc, in_key);
		FUNC2(ctx->key_twk, in_key + AES_KEYSIZE_192);
		break;
	case AES_KEYSIZE_256:
		ctx->rounds = 6;
		FUNC3(ctx->key_enc, in_key);
		FUNC3(ctx->key_twk, in_key + AES_KEYSIZE_256);
		break;
	}

	FUNC4(ctx->key_dec, ctx->key_enc, key_len);

	return 0;
}