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
struct TYPE_4__ {int /*<<< orphan*/  cip; } ;
struct s390_aes_ctx {TYPE_2__ fallback; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_3__ {char* cra_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s390_aes_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm)
{
	const char *name = tfm->__crt_alg->cra_name;
	struct s390_aes_ctx *sctx = FUNC3(tfm);

	sctx->fallback.cip = FUNC2(name, 0,
						 CRYPTO_ALG_NEED_FALLBACK);

	if (FUNC0(sctx->fallback.cip)) {
		FUNC4("Allocating AES fallback algorithm %s failed\n",
		       name);
		return FUNC1(sctx->fallback.cip);
	}

	return 0;
}