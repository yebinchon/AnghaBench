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
struct shash_desc {struct crypto_shash* tfm; } ;
struct ghash_async_ctx {struct cryptd_ahash* cryptd_tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cryptd_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct ahash_request*) ; 
 struct crypto_shash* FUNC1 (struct cryptd_ahash*) ; 
 struct shash_desc* FUNC2 (struct ahash_request*) ; 
 struct ghash_async_ctx* FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC4(req);
	struct ghash_async_ctx *ctx = FUNC3(tfm);
	struct ahash_request *cryptd_req = FUNC0(req);
	struct cryptd_ahash *cryptd_tfm = ctx->cryptd_tfm;
	struct shash_desc *desc = FUNC2(cryptd_req);
	struct crypto_shash *child = FUNC1(cryptd_tfm);

	desc->tfm = child;
	return FUNC5(desc);
}