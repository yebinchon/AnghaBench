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
struct crypto_aes_ctx {int /*<<< orphan*/  key_enc; } ;
struct aesbs_xts_ctx {int /*<<< orphan*/  twkey; struct crypto_aes_ctx cts; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC1 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct aesbs_xts_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct crypto_skcipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct crypto_skcipher *tfm, const u8 *in_key,
			    unsigned int key_len)
{
	struct aesbs_xts_ctx *ctx = FUNC2(tfm);
	struct crypto_aes_ctx rk;
	int err;

	err = FUNC4(tfm, in_key, key_len);
	if (err)
		return err;

	key_len /= 2;
	err = FUNC0(&ctx->cts, in_key, key_len);
	if (err)
		return err;

	err = FUNC0(&rk, in_key + key_len, key_len);
	if (err)
		return err;

	FUNC3(ctx->twkey, rk.key_enc, sizeof(ctx->twkey));

	return FUNC1(tfm, in_key, key_len);
}