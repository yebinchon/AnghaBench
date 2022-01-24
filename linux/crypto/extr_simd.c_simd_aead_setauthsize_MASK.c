#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct simd_aead_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct crypto_aead base; } ;

/* Variables and functions */
 struct simd_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct crypto_aead *tfm, unsigned int authsize)
{
	struct simd_aead_ctx *ctx = FUNC0(tfm);
	struct crypto_aead *child = &ctx->cryptd_tfm->base;

	return FUNC1(child, authsize);
}