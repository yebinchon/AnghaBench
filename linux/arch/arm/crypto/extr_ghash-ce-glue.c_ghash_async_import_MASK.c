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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct ghash_async_ctx {int /*<<< orphan*/  cryptd_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct shash_desc* FUNC2 (struct ahash_request*) ; 
 struct ghash_async_ctx* FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int FUNC5 (struct shash_desc*,void const*) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req, const void *in)
{
	struct ahash_request *cryptd_req = FUNC0(req);
	struct crypto_ahash *tfm = FUNC4(req);
	struct ghash_async_ctx *ctx = FUNC3(tfm);
	struct shash_desc *desc = FUNC2(cryptd_req);

	desc->tfm = FUNC1(ctx->cryptd_tfm);

	return FUNC5(desc, in);
}