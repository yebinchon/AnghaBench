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
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int /*<<< orphan*/  key_enc; } ;
struct TYPE_2__ {int rounds; int /*<<< orphan*/  rk; } ;
struct aesbs_cbc_ctx {int /*<<< orphan*/  enc_tfm; TYPE_1__ key; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct aesbs_cbc_ctx* FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct crypto_skcipher *tfm, const u8 *in_key,
			    unsigned int key_len)
{
	struct aesbs_cbc_ctx *ctx = FUNC3(tfm);
	struct crypto_aes_ctx rk;
	int err;

	err = FUNC0(&rk, in_key, key_len);
	if (err)
		return err;

	ctx->key.rounds = 6 + key_len / 4;

	FUNC4();
	FUNC1(ctx->key.rk, rk.key_enc, ctx->key.rounds);
	FUNC5();

	return FUNC2(ctx->enc_tfm, in_key, key_len);
}