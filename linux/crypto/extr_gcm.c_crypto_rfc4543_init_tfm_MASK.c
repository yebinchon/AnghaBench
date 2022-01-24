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
struct crypto_sync_skcipher {int dummy; } ;
struct crypto_rfc4543_req_ctx {int dummy; } ;
struct crypto_aead_spawn {int dummy; } ;
struct crypto_rfc4543_instance_ctx {struct crypto_aead_spawn aead; } ;
struct crypto_rfc4543_ctx {struct crypto_sync_skcipher* null; struct crypto_sync_skcipher* child; } ;
typedef  struct crypto_sync_skcipher crypto_aead ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ GCM_AES_IV_SIZE ; 
 scalar_t__ FUNC1 (struct crypto_sync_skcipher*) ; 
 int FUNC2 (struct crypto_sync_skcipher*) ; 
 struct aead_instance* FUNC3 (struct crypto_sync_skcipher*) ; 
 struct crypto_rfc4543_instance_ctx* FUNC4 (struct aead_instance*) ; 
 unsigned long FUNC5 (struct crypto_sync_skcipher*) ; 
 struct crypto_rfc4543_ctx* FUNC6 (struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_sync_skcipher*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_sync_skcipher*) ; 
 struct crypto_sync_skcipher* FUNC10 () ; 
 struct crypto_sync_skcipher* FUNC11 (struct crypto_aead_spawn*) ; 
 int FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct crypto_aead *tfm)
{
	struct aead_instance *inst = FUNC3(tfm);
	struct crypto_rfc4543_instance_ctx *ictx = FUNC4(inst);
	struct crypto_aead_spawn *spawn = &ictx->aead;
	struct crypto_rfc4543_ctx *ctx = FUNC6(tfm);
	struct crypto_aead *aead;
	struct crypto_sync_skcipher *null;
	unsigned long align;
	int err = 0;

	aead = FUNC11(spawn);
	if (FUNC1(aead))
		return FUNC2(aead);

	null = FUNC10();
	err = FUNC2(null);
	if (FUNC1(null))
		goto err_free_aead;

	ctx->child = aead;
	ctx->null = null;

	align = FUNC5(aead);
	align &= ~(FUNC12() - 1);
	FUNC8(
		tfm,
		sizeof(struct crypto_rfc4543_req_ctx) +
		FUNC0(FUNC7(aead), FUNC12()) +
		align + GCM_AES_IV_SIZE);

	return 0;

err_free_aead:
	FUNC9(aead);
	return err;
}