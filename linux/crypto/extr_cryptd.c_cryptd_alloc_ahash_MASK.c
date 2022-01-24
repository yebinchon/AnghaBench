#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {TYPE_1__* __crt_alg; } ;
struct crypto_ahash {TYPE_2__ base; } ;
struct cryptd_hash_ctx {int /*<<< orphan*/  refcnt; } ;
struct cryptd_ahash {int dummy; } ;
struct TYPE_3__ {scalar_t__ cra_module; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int /*<<< orphan*/  EINVAL ; 
 struct cryptd_ahash* FUNC0 (struct crypto_ahash*) ; 
 struct cryptd_ahash* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct crypto_ahash*) ; 
 scalar_t__ THIS_MODULE ; 
 struct cryptd_ahash* FUNC3 (struct crypto_ahash*) ; 
 struct cryptd_hash_ctx* FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (char*,int,char*,char const*) ; 

struct cryptd_ahash *FUNC9(const char *alg_name,
					u32 type, u32 mask)
{
	char cryptd_alg_name[CRYPTO_MAX_ALG_NAME];
	struct cryptd_hash_ctx *ctx;
	struct crypto_ahash *tfm;

	if (FUNC8(cryptd_alg_name, CRYPTO_MAX_ALG_NAME,
		     "cryptd(%s)", alg_name) >= CRYPTO_MAX_ALG_NAME)
		return FUNC1(-EINVAL);
	tfm = FUNC5(cryptd_alg_name, type, mask);
	if (FUNC2(tfm))
		return FUNC0(tfm);
	if (tfm->base.__crt_alg->cra_module != THIS_MODULE) {
		FUNC6(tfm);
		return FUNC1(-EINVAL);
	}

	ctx = FUNC4(tfm);
	FUNC7(&ctx->refcnt, 1);

	return FUNC3(tfm);
}