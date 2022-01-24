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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_tfm {int dummy; } ;
struct crypto_sm4_ctx {int /*<<< orphan*/  rkey_enc; } ;

/* Variables and functions */
 struct crypto_sm4_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	const struct crypto_sm4_ctx *ctx = FUNC0(tfm);

	FUNC1(ctx->rkey_enc, (u32 *)out, (u32 *)in);
}