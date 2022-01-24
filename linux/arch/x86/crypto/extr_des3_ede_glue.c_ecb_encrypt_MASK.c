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
struct skcipher_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  expkey; } ;
struct des3_ede_x86_ctx {TYPE_1__ enc; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 struct des3_ede_x86_ctx* FUNC0 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC1 (struct skcipher_request*) ; 
 int FUNC2 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC1(req);
	struct des3_ede_x86_ctx *ctx = FUNC0(tfm);

	return FUNC2(req, ctx->enc.expkey);
}