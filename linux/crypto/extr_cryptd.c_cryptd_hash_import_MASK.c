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
struct crypto_ahash {int dummy; } ;
struct cryptd_hash_ctx {int /*<<< orphan*/  child; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct shash_desc* FUNC0 (struct ahash_request*) ; 
 struct cryptd_hash_ctx* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct shash_desc*,void const*) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req, const void *in)
{
	struct crypto_ahash *tfm = FUNC2(req);
	struct cryptd_hash_ctx *ctx = FUNC1(tfm);
	struct shash_desc *desc = FUNC0(req);

	desc->tfm = ctx->child;

	return FUNC3(desc, in);
}