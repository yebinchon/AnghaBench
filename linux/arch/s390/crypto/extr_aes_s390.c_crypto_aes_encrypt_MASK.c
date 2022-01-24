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
struct TYPE_2__ {int /*<<< orphan*/  cip; } ;
struct s390_aes_ctx {int /*<<< orphan*/  key; int /*<<< orphan*/  fc; TYPE_1__ fallback; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 struct s390_aes_ctx* FUNC2 (struct crypto_tfm*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	struct s390_aes_ctx *sctx = FUNC2(tfm);

	if (FUNC3(!sctx->fc)) {
		FUNC1(sctx->fallback.cip, out, in);
		return;
	}
	FUNC0(sctx->fc, &sctx->key, out, in, AES_BLOCK_SIZE);
}