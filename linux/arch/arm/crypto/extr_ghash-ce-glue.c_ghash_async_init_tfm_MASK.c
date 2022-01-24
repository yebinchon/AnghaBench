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
struct ghash_async_ctx {struct cryptd_ahash* cryptd_tfm; } ;
struct crypto_tfm {int dummy; } ;
struct cryptd_ahash {int /*<<< orphan*/  base; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cryptd_ahash*) ; 
 int FUNC1 (struct cryptd_ahash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 struct cryptd_ahash* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ghash_async_ctx* FUNC6 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm)
{
	struct cryptd_ahash *cryptd_tfm;
	struct ghash_async_ctx *ctx = FUNC6(tfm);

	cryptd_tfm = FUNC3("ghash-ce-sync", 0, 0);
	if (FUNC0(cryptd_tfm))
		return FUNC1(cryptd_tfm);
	ctx->cryptd_tfm = cryptd_tfm;
	FUNC5(FUNC2(tfm),
				 sizeof(struct ahash_request) +
				 FUNC4(&cryptd_tfm->base));

	return 0;
}