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
struct crypto_aead {int dummy; } ;
struct aead_geniv_ctx {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 struct aead_geniv_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct crypto_aead *tfm,
			     const u8 *key, unsigned int keylen)
{
	struct aead_geniv_ctx *ctx = FUNC0(tfm);

	return FUNC1(ctx->child, key, keylen);
}