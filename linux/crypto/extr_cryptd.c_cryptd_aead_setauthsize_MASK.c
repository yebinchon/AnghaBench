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
struct cryptd_aead_ctx {struct crypto_aead* child; } ;

/* Variables and functions */
 struct cryptd_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct crypto_aead *parent,
				   unsigned int authsize)
{
	struct cryptd_aead_ctx *ctx = FUNC0(parent);
	struct crypto_aead *child = ctx->child;

	return FUNC1(child, authsize);
}