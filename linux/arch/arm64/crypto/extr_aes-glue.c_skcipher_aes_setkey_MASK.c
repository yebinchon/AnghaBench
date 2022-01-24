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
struct crypto_aes_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto_aes_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct crypto_skcipher *tfm, const u8 *in_key,
			       unsigned int key_len)
{
	struct crypto_aes_ctx *ctx = FUNC1(tfm);
	int ret;

	ret = FUNC0(ctx, in_key, key_len);
	if (ret)
		FUNC2(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);

	return ret;
}