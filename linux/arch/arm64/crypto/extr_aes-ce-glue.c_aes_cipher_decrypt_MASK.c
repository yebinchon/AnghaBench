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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int /*<<< orphan*/  key_dec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct crypto_aes_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aes_ctx*) ; 

__attribute__((used)) static void FUNC7(struct crypto_tfm *tfm, u8 dst[], u8 const src[])
{
	struct crypto_aes_ctx *ctx = FUNC3(tfm);

	if (!FUNC2()) {
		FUNC1(ctx, dst, src);
		return;
	}

	FUNC4();
	FUNC0(ctx->key_dec, dst, src, FUNC6(ctx));
	FUNC5();
}