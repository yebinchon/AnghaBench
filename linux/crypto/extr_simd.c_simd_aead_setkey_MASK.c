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
typedef  int /*<<< orphan*/  u8 ;
struct simd_aead_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct crypto_aead base; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*,int) ; 
 struct simd_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int) ; 
 int FUNC4 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct crypto_aead *tfm, const u8 *key,
				unsigned int key_len)
{
	struct simd_aead_ctx *ctx = FUNC1(tfm);
	struct crypto_aead *child = &ctx->cryptd_tfm->base;
	int err;

	FUNC0(child, CRYPTO_TFM_REQ_MASK);
	FUNC3(child, FUNC2(tfm) &
				     CRYPTO_TFM_REQ_MASK);
	err = FUNC4(child, key, key_len);
	FUNC3(tfm, FUNC2(child) &
				   CRYPTO_TFM_RES_MASK);
	return err;
}