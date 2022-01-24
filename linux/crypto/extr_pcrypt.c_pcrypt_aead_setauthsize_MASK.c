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
struct pcrypt_aead_ctx {int /*<<< orphan*/  child; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 struct pcrypt_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct crypto_aead *parent,
				   unsigned int authsize)
{
	struct pcrypt_aead_ctx *ctx = FUNC0(parent);

	return FUNC1(ctx->child, authsize);
}