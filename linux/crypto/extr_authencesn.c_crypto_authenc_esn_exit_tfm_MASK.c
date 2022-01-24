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
struct crypto_authenc_esn_ctx {int /*<<< orphan*/  enc; int /*<<< orphan*/  auth; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 struct crypto_authenc_esn_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct crypto_aead *tfm)
{
	struct crypto_authenc_esn_ctx *ctx = FUNC0(tfm);

	FUNC1(ctx->auth);
	FUNC2(ctx->enc);
	FUNC3();
}