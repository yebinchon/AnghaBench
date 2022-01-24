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
struct skcipher_request {int /*<<< orphan*/  iv; } ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct skcipher_request*,struct chacha_ctx*,int /*<<< orphan*/ ) ; 
 struct chacha_ctx* FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 

int FUNC3(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct chacha_ctx *ctx = FUNC1(tfm);

	return FUNC0(req, ctx, req->iv);
}