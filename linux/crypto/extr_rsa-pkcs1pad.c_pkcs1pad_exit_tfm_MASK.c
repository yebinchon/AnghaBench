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
struct pkcs1pad_ctx {int /*<<< orphan*/  child; } ;
struct crypto_akcipher {int dummy; } ;

/* Variables and functions */
 struct pkcs1pad_ctx* FUNC0 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct crypto_akcipher *tfm)
{
	struct pkcs1pad_ctx *ctx = FUNC0(tfm);

	FUNC1(ctx->child);
}