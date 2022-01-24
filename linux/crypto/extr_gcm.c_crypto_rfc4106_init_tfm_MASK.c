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
struct crypto_rfc4106_req_ctx {int dummy; } ;
struct crypto_rfc4106_ctx {struct crypto_aead* child; } ;
struct crypto_aead_spawn {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 struct aead_instance* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead_spawn* FUNC4 (struct aead_instance*) ; 
 unsigned long FUNC5 (struct crypto_aead*) ; 
 struct crypto_rfc4106_ctx* FUNC6 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_aead*,scalar_t__) ; 
 struct crypto_aead* FUNC9 (struct crypto_aead_spawn*) ; 
 int FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct crypto_aead *tfm)
{
	struct aead_instance *inst = FUNC3(tfm);
	struct crypto_aead_spawn *spawn = FUNC4(inst);
	struct crypto_rfc4106_ctx *ctx = FUNC6(tfm);
	struct crypto_aead *aead;
	unsigned long align;

	aead = FUNC9(spawn);
	if (FUNC1(aead))
		return FUNC2(aead);

	ctx->child = aead;

	align = FUNC5(aead);
	align &= ~(FUNC10() - 1);
	FUNC8(
		tfm,
		sizeof(struct crypto_rfc4106_req_ctx) +
		FUNC0(FUNC7(aead), FUNC10()) +
		align + 24);

	return 0;
}