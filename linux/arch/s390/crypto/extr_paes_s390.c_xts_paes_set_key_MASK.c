#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct s390_pxts_ctx {TYPE_1__* pk; int /*<<< orphan*/ * kb; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  protkey; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_256 ; 
 int AES_MAX_KEY_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 scalar_t__ PKEY_KEYTYPE_AES_128 ; 
 scalar_t__ FUNC0 (struct s390_pxts_ctx*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s390_pxts_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct crypto_tfm*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm, const u8 *in_key,
			    unsigned int xts_key_len)
{
	int rc;
	struct s390_pxts_ctx *ctx = FUNC3(tfm);
	u8 ckey[2 * AES_MAX_KEY_SIZE];
	unsigned int ckey_len, key_len;

	if (xts_key_len % 2)
		return -EINVAL;

	key_len = xts_key_len / 2;

	FUNC2(&ctx->kb[0]);
	FUNC2(&ctx->kb[1]);
	rc = FUNC1(&ctx->kb[0], in_key, key_len);
	if (rc)
		return rc;
	rc = FUNC1(&ctx->kb[1], in_key + key_len, key_len);
	if (rc)
		return rc;

	if (FUNC0(ctx)) {
		tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	/*
	 * xts_check_key verifies the key length is not odd and makes
	 * sure that the two keys are not the same. This can be done
	 * on the two protected keys as well
	 */
	ckey_len = (ctx->pk[0].type == PKEY_KEYTYPE_AES_128) ?
		AES_KEYSIZE_128 : AES_KEYSIZE_256;
	FUNC4(ckey, ctx->pk[0].protkey, ckey_len);
	FUNC4(ckey + ckey_len, ctx->pk[1].protkey, ckey_len);
	return FUNC5(tfm, ckey, 2*ckey_len);
}