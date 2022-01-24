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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int nrounds; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int CHACHA_KEY_SIZE ; 
 int EINVAL ; 
 struct chacha_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct crypto_skcipher *tfm, const u8 *key,
			 unsigned int keysize, int nrounds)
{
	struct chacha_ctx *ctx = FUNC1(tfm);
	int i;

	if (keysize != CHACHA_KEY_SIZE)
		return -EINVAL;

	for (i = 0; i < FUNC0(ctx->key); i++)
		ctx->key[i] = FUNC2(key + i * sizeof(u32));

	ctx->nrounds = nrounds;
	return 0;
}