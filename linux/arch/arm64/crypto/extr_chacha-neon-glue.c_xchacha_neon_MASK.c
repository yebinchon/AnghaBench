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
struct skcipher_request {scalar_t__ cryptlen; scalar_t__ iv; } ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int /*<<< orphan*/  nrounds; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ CHACHA_BLOCK_SIZE ; 
 int FUNC0 (struct skcipher_request*,struct chacha_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct chacha_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct chacha_ctx* FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int FUNC5 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC10(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC4(req);
	struct chacha_ctx *ctx = FUNC3(tfm);
	struct chacha_ctx subctx;
	u32 state[16];
	u8 real_iv[16];

	if (req->cryptlen <= CHACHA_BLOCK_SIZE || !FUNC2())
		return FUNC5(req);

	FUNC1(state, ctx, req->iv);

	FUNC7();
	FUNC6(state, subctx.key, ctx->nrounds);
	FUNC8();
	subctx.nrounds = ctx->nrounds;

	FUNC9(&real_iv[0], req->iv + 24, 8);
	FUNC9(&real_iv[8], req->iv + 16, 8);
	return FUNC0(req, &subctx, real_iv);
}