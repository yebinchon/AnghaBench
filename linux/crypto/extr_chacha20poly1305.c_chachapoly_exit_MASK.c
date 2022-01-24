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
struct crypto_aead {int dummy; } ;
struct chachapoly_ctx {int /*<<< orphan*/  chacha; int /*<<< orphan*/  poly; } ;

/* Variables and functions */
 struct chachapoly_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct crypto_aead *tfm)
{
	struct chachapoly_ctx *ctx = FUNC0(tfm);

	FUNC1(ctx->poly);
	FUNC2(ctx->chacha);
}