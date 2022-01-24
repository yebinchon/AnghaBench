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
struct aesbs_ctx {int rounds; int /*<<< orphan*/  rk; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct aesbs_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct crypto_skcipher *tfm, const u8 *in_key,
			unsigned int key_len)
{
	struct aesbs_ctx *ctx = FUNC2(tfm);
	struct crypto_aes_ctx rk;
	int err;

	err = FUNC0(&rk, in_key, key_len);
	if (err)
		return err;

	ctx->rounds = 6 + key_len / 4;

	FUNC3();
	FUNC1(ctx->rk, rk.key_enc, ctx->rounds);
	FUNC4();

	return 0;
}