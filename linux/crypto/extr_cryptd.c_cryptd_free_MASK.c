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
struct hashd_instance_ctx {int /*<<< orphan*/  spawn; } ;
struct TYPE_2__ {int cra_flags; } ;
struct crypto_instance {TYPE_1__ alg; } ;
struct cryptd_instance_ctx {int /*<<< orphan*/  spawn; } ;
struct aead_instance_ctx {int /*<<< orphan*/  aead_spawn; } ;

/* Variables and functions */
#define  CRYPTO_ALG_TYPE_AEAD 129 
#define  CRYPTO_ALG_TYPE_AHASH 128 
 int CRYPTO_ALG_TYPE_MASK ; 
 struct crypto_instance* FUNC0 (struct crypto_instance*) ; 
 struct crypto_instance* FUNC1 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_instance*) ; 

__attribute__((used)) static void FUNC7(struct crypto_instance *inst)
{
	struct cryptd_instance_ctx *ctx = FUNC5(inst);
	struct hashd_instance_ctx *hctx = FUNC5(inst);
	struct aead_instance_ctx *aead_ctx = FUNC5(inst);

	switch (inst->alg.cra_flags & CRYPTO_ALG_TYPE_MASK) {
	case CRYPTO_ALG_TYPE_AHASH:
		FUNC3(&hctx->spawn);
		FUNC6(FUNC1(inst));
		return;
	case CRYPTO_ALG_TYPE_AEAD:
		FUNC2(&aead_ctx->aead_spawn);
		FUNC6(FUNC0(inst));
		return;
	default:
		FUNC4(&ctx->spawn);
		FUNC6(inst);
	}
}