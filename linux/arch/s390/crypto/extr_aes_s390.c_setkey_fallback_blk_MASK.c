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
struct TYPE_2__ {int /*<<< orphan*/  blk; } ;
struct s390_aes_ctx {TYPE_1__ fallback; } ;
struct crypto_tfm {int crt_flags; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct s390_aes_ctx* FUNC4 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm, const u8 *key,
		unsigned int len)
{
	struct s390_aes_ctx *sctx = FUNC4(tfm);
	unsigned int ret;

	FUNC0(sctx->fallback.blk,
					 CRYPTO_TFM_REQ_MASK);
	FUNC2(sctx->fallback.blk, tfm->crt_flags &
						      CRYPTO_TFM_REQ_MASK);

	ret = FUNC3(sctx->fallback.blk, key, len);

	tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
	tfm->crt_flags |= FUNC1(sctx->fallback.blk) &
			  CRYPTO_TFM_RES_MASK;

	return ret;
}