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
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_xts_ctx {int /*<<< orphan*/  key2; int /*<<< orphan*/  key1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto_aes_xts_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_skcipher *tfm, const u8 *in_key,
		       unsigned int key_len)
{
	struct crypto_aes_xts_ctx *ctx = FUNC1(tfm);
	int ret;

	ret = FUNC3(tfm, in_key, key_len);
	if (ret)
		return ret;

	ret = FUNC0(&ctx->key1, in_key, key_len / 2);
	if (!ret)
		ret = FUNC0(&ctx->key2, &in_key[key_len / 2],
				       key_len / 2);
	if (!ret)
		return 0;

	FUNC2(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
	return -EINVAL;
}