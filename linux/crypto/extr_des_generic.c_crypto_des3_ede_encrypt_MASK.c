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
struct des3_ede_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct des3_ede_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (struct des3_ede_ctx const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm, u8 *dst,
				    const u8 *src)
{
	const struct des3_ede_ctx *dctx = FUNC0(tfm);

	FUNC1(dctx, dst, src);
}