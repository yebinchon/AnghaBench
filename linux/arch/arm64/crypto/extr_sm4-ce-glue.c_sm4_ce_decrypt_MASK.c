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
struct crypto_sm4_ctx {int /*<<< orphan*/  rkey_dec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_tfm*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 struct crypto_sm4_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	const struct crypto_sm4_ctx *ctx = FUNC2(tfm);

	if (!FUNC0()) {
		FUNC1(tfm, out, in);
	} else {
		FUNC3();
		FUNC5(ctx->rkey_dec, out, in);
		FUNC4();
	}
}