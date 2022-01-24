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
struct dh_ctx {int /*<<< orphan*/  p; } ;
struct crypto_kpp {int dummy; } ;

/* Variables and functions */
 struct dh_ctx* FUNC0 (struct crypto_kpp*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct crypto_kpp *tfm)
{
	struct dh_ctx *ctx = FUNC0(tfm);

	return FUNC1(ctx->p);
}