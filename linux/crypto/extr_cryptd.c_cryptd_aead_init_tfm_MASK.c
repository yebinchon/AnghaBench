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
struct crypto_aead_spawn {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cryptd_aead_request_ctx {int dummy; } ;
struct cryptd_aead_ctx {struct crypto_aead* child; } ;
struct aead_instance_ctx {struct crypto_aead_spawn aead_spawn; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 struct aead_instance* FUNC2 (struct crypto_aead*) ; 
 struct aead_instance_ctx* FUNC3 (struct aead_instance*) ; 
 struct cryptd_aead_ctx* FUNC4 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 struct crypto_aead* FUNC7 (struct crypto_aead_spawn*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct crypto_aead *tfm)
{
	struct aead_instance *inst = FUNC2(tfm);
	struct aead_instance_ctx *ictx = FUNC3(inst);
	struct crypto_aead_spawn *spawn = &ictx->aead_spawn;
	struct cryptd_aead_ctx *ctx = FUNC4(tfm);
	struct crypto_aead *cipher;

	cipher = FUNC7(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = cipher;
	FUNC6(
		tfm, FUNC8((unsigned)sizeof(struct cryptd_aead_request_ctx),
			 FUNC5(cipher)));
	return 0;
}