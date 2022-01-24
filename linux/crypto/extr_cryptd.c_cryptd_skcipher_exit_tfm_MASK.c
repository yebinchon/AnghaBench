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
struct cryptd_skcipher_ctx {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cryptd_skcipher_ctx* FUNC1 (struct crypto_skcipher*) ; 

__attribute__((used)) static void FUNC2(struct crypto_skcipher *tfm)
{
	struct cryptd_skcipher_ctx *ctx = FUNC1(tfm);

	FUNC0(ctx->child);
}