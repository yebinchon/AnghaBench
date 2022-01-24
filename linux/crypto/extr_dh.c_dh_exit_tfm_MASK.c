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
struct dh_ctx {int dummy; } ;
struct crypto_kpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dh_ctx*) ; 
 struct dh_ctx* FUNC1 (struct crypto_kpp*) ; 

__attribute__((used)) static void FUNC2(struct crypto_kpp *tfm)
{
	struct dh_ctx *ctx = FUNC1(tfm);

	FUNC0(ctx);
}