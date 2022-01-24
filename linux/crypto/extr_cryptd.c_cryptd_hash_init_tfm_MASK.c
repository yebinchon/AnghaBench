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
struct crypto_shash_spawn {int dummy; } ;
struct hashd_instance_ctx {struct crypto_shash_spawn spawn; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct cryptd_hash_request_ctx {int dummy; } ;
struct cryptd_hash_ctx {struct crypto_shash* child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct hashd_instance_ctx* FUNC4 (struct crypto_instance*) ; 
 scalar_t__ FUNC5 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC6 (struct crypto_shash_spawn*) ; 
 struct crypto_instance* FUNC7 (struct crypto_tfm*) ; 
 struct cryptd_hash_ctx* FUNC8 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC9(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = FUNC7(tfm);
	struct hashd_instance_ctx *ictx = FUNC4(inst);
	struct crypto_shash_spawn *spawn = &ictx->spawn;
	struct cryptd_hash_ctx *ctx = FUNC8(tfm);
	struct crypto_shash *hash;

	hash = FUNC6(spawn);
	if (FUNC0(hash))
		return FUNC1(hash);

	ctx->child = hash;
	FUNC3(FUNC2(tfm),
				 sizeof(struct cryptd_hash_request_ctx) +
				 FUNC5(hash));
	return 0;
}