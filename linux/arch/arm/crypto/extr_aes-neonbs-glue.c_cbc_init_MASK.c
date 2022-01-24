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
struct aesbs_cbc_ctx {int /*<<< orphan*/  enc_tfm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aesbs_cbc_ctx* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct aesbs_cbc_ctx *ctx = FUNC2(tfm);

	ctx->enc_tfm = FUNC1("aes", 0, 0);

	return FUNC0(ctx->enc_tfm);
}