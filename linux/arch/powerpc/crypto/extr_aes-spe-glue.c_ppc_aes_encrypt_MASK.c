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
struct ppc_aes_ctx {int /*<<< orphan*/  rounds; int /*<<< orphan*/  key_enc; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct ppc_aes_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	struct ppc_aes_ctx *ctx = FUNC0(tfm);

	FUNC2();
	FUNC1(out, in, ctx->key_enc, ctx->rounds);
	FUNC3();
}