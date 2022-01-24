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
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct aead_instance {int dummy; } ;
struct aead_geniv_ctx {struct crypto_aead* child; struct crypto_aead* sknull; int /*<<< orphan*/  salt; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 struct aead_instance* FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_instance*) ; 
 struct aead_geniv_ctx* FUNC4 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aead*) ; 
 scalar_t__ FUNC6 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_aead*,scalar_t__) ; 
 int /*<<< orphan*/  crypto_default_rng ; 
 struct crypto_aead* FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_aead* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct crypto_aead *aead)
{
	struct aead_geniv_ctx *ctx = FUNC4(aead);
	struct aead_instance *inst = FUNC2(aead);
	struct crypto_aead *child;
	int err;

	FUNC14(&ctx->lock);

	err = FUNC9();
	if (err)
		goto out;

	err = FUNC12(crypto_default_rng, ctx->salt,
				   FUNC5(aead));
	FUNC11();
	if (err)
		goto out;

	ctx->sknull = FUNC8();
	err = FUNC1(ctx->sknull);
	if (FUNC0(ctx->sknull))
		goto out;

	child = FUNC13(FUNC3(inst));
	err = FUNC1(child);
	if (FUNC0(child))
		goto drop_null;

	ctx->child = child;
	FUNC7(aead, FUNC6(child) +
				      sizeof(struct aead_request));

	err = 0;

out:
	return err;

drop_null:
	FUNC10();
	goto out;
}