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
struct skcipher_request {scalar_t__ iv; } ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int /*<<< orphan*/  nrounds; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int FUNC0 (struct skcipher_request*,struct chacha_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct chacha_ctx*,scalar_t__) ; 
 struct chacha_ctx* FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 

int FUNC6(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC3(req);
	struct chacha_ctx *ctx = FUNC2(tfm);
	struct chacha_ctx subctx;
	u32 state[16];
	u8 real_iv[16];

	/* Compute the subkey given the original key and first 128 nonce bits */
	FUNC1(state, ctx, req->iv);
	FUNC4(state, subctx.key, ctx->nrounds);
	subctx.nrounds = ctx->nrounds;

	/* Build the real IV */
	FUNC5(&real_iv[0], req->iv + 24, 8); /* stream position */
	FUNC5(&real_iv[8], req->iv + 16, 8); /* remaining 64 nonce bits */

	/* Generate the stream and XOR it with the data */
	return FUNC0(req, &subctx, real_iv);
}