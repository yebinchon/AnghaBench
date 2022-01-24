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
struct skcipher_request {scalar_t__ cryptlen; int /*<<< orphan*/  iv; } ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHACHA_BLOCK_SIZE ; 
 int FUNC0 (struct skcipher_request*,struct chacha_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct chacha_ctx* FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC5(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC4(req);
	struct chacha_ctx *ctx = FUNC3(tfm);

	if (req->cryptlen <= CHACHA_BLOCK_SIZE || !FUNC2())
		return FUNC1(req);

	return FUNC0(req, ctx, req->iv);
}