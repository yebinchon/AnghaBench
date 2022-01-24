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
struct crypto_skcipher_spawn {int dummy; } ;
struct skcipherd_instance_ctx {struct crypto_skcipher_spawn spawn; } ;
struct skcipher_instance {int dummy; } ;
struct crypto_sync_skcipher {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cryptd_skcipher_request_ctx {int dummy; } ;
struct cryptd_skcipher_ctx {struct crypto_sync_skcipher* child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct cryptd_skcipher_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*,int) ; 
 struct crypto_skcipher* FUNC4 (struct crypto_skcipher_spawn*) ; 
 struct skcipher_instance* FUNC5 (struct crypto_skcipher*) ; 
 struct skcipherd_instance_ctx* FUNC6 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *tfm)
{
	struct skcipher_instance *inst = FUNC5(tfm);
	struct skcipherd_instance_ctx *ictx = FUNC6(inst);
	struct crypto_skcipher_spawn *spawn = &ictx->spawn;
	struct cryptd_skcipher_ctx *ctx = FUNC2(tfm);
	struct crypto_skcipher *cipher;

	cipher = FUNC4(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = (struct crypto_sync_skcipher *)cipher;
	FUNC3(
		tfm, sizeof(struct cryptd_skcipher_request_ctx));
	return 0;
}