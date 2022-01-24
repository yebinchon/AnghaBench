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
struct crypto_tfm {int dummy; } ;
struct aesbs_xts_ctx {void* tweak_tfm; void* cts_tfm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 struct aesbs_xts_ctx* FUNC5 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm)
{
	struct aesbs_xts_ctx *ctx = FUNC5(tfm);

	ctx->cts_tfm = FUNC3("aes", 0, 0);
	if (FUNC0(ctx->cts_tfm))
		return FUNC1(ctx->cts_tfm);

	ctx->tweak_tfm = FUNC3("aes", 0, 0);
	if (FUNC0(ctx->tweak_tfm))
		FUNC4(ctx->cts_tfm);

	return FUNC2(ctx->tweak_tfm);
}