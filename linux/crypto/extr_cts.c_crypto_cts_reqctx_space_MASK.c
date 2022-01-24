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
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cts_reqctx {int dummy; } ;
struct crypto_cts_ctx {struct crypto_skcipher* child; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_cts_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 struct crypto_cts_reqctx* FUNC5 (struct skcipher_request*) ; 

__attribute__((used)) static inline u8 *FUNC6(struct skcipher_request *req)
{
	struct crypto_cts_reqctx *rctx = FUNC5(req);
	struct crypto_skcipher *tfm = FUNC4(req);
	struct crypto_cts_ctx *ctx = FUNC2(tfm);
	struct crypto_skcipher *child = ctx->child;

	return FUNC0((u8 *)(rctx + 1) + FUNC3(child),
			 FUNC1(tfm) + 1);
}