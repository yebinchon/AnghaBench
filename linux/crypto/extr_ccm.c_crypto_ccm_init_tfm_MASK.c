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
struct crypto_skcipher {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int dummy; } ;
struct crypto_ccm_ctx {struct crypto_skcipher* ctr; struct crypto_skcipher* mac; } ;
typedef  struct crypto_skcipher crypto_ahash ;
struct crypto_aead {int dummy; } ;
struct ccm_instance_ctx {int /*<<< orphan*/  ctr; int /*<<< orphan*/  mac; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct crypto_skcipher*) ; 
 struct aead_instance* FUNC2 (struct crypto_aead*) ; 
 struct ccm_instance_ctx* FUNC3 (struct aead_instance*) ; 
 unsigned long FUNC4 (struct crypto_aead*) ; 
 struct crypto_ccm_ctx* FUNC5 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC10 (int /*<<< orphan*/ *) ; 
 struct crypto_skcipher* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct crypto_aead *tfm)
{
	struct aead_instance *inst = FUNC2(tfm);
	struct ccm_instance_ctx *ictx = FUNC3(inst);
	struct crypto_ccm_ctx *ctx = FUNC5(tfm);
	struct crypto_ahash *mac;
	struct crypto_skcipher *ctr;
	unsigned long align;
	int err;

	mac = FUNC10(&ictx->mac);
	if (FUNC0(mac))
		return FUNC1(mac);

	ctr = FUNC11(&ictx->ctr);
	err = FUNC1(ctr);
	if (FUNC0(ctr))
		goto err_free_mac;

	ctx->mac = mac;
	ctx->ctr = ctr;

	align = FUNC4(tfm);
	align &= ~(FUNC12() - 1);
	FUNC6(
		tfm,
		align + sizeof(struct crypto_ccm_req_priv_ctx) +
		FUNC13(FUNC7(mac), FUNC9(ctr)));

	return 0;

err_free_mac:
	FUNC8(mac);
	return err;
}