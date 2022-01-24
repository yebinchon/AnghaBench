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
struct essiv_tfm_ctx {struct crypto_shash* hash; struct crypto_shash* essiv_cipher; } ;
struct essiv_instance_ctx {int /*<<< orphan*/  shash_driver_name; int /*<<< orphan*/  essiv_cipher_name; } ;
struct crypto_shash {int dummy; } ;
typedef  struct crypto_shash crypto_cipher ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_shash* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 

__attribute__((used)) static int FUNC5(struct essiv_instance_ctx *ictx,
			  struct essiv_tfm_ctx *tctx)
{
	struct crypto_cipher *essiv_cipher;
	struct crypto_shash *hash;
	int err;

	essiv_cipher = FUNC2(ictx->essiv_cipher_name, 0, 0);
	if (FUNC0(essiv_cipher))
		return FUNC1(essiv_cipher);

	hash = FUNC3(ictx->shash_driver_name, 0, 0);
	if (FUNC0(hash)) {
		err = FUNC1(hash);
		goto err_free_essiv_cipher;
	}

	tctx->essiv_cipher = essiv_cipher;
	tctx->hash = hash;

	return 0;

err_free_essiv_cipher:
	FUNC4(essiv_cipher);
	return err;
}