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
struct xts_instance_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  spawn; } ;
struct skcipher_instance {int dummy; } ;
struct rctx {int dummy; } ;
struct priv {struct crypto_skcipher* tweak; struct crypto_skcipher* child; } ;
struct crypto_skcipher {int dummy; } ;
typedef  struct crypto_skcipher crypto_cipher ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*) ; 
 struct priv* FUNC4 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC5 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_skcipher*,scalar_t__) ; 
 struct crypto_skcipher* FUNC7 (int /*<<< orphan*/ *) ; 
 struct skcipher_instance* FUNC8 (struct crypto_skcipher*) ; 
 struct xts_instance_ctx* FUNC9 (struct skcipher_instance*) ; 

__attribute__((used)) static int FUNC10(struct crypto_skcipher *tfm)
{
	struct skcipher_instance *inst = FUNC8(tfm);
	struct xts_instance_ctx *ictx = FUNC9(inst);
	struct priv *ctx = FUNC4(tfm);
	struct crypto_skcipher *child;
	struct crypto_cipher *tweak;

	child = FUNC7(&ictx->spawn);
	if (FUNC0(child))
		return FUNC1(child);

	ctx->child = child;

	tweak = FUNC2(ictx->name, 0, 0);
	if (FUNC0(tweak)) {
		FUNC3(ctx->child);
		return FUNC1(tweak);
	}

	ctx->tweak = tweak;

	FUNC6(tfm, FUNC5(child) +
					 sizeof(struct rctx));

	return 0;
}