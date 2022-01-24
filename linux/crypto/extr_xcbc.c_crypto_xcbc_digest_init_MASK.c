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
struct xcbc_desc_ctx {scalar_t__ len; int /*<<< orphan*/ * ctx; } ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct xcbc_desc_ctx* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *pdesc)
{
	unsigned long alignmask = FUNC1(pdesc->tfm);
	struct xcbc_desc_ctx *ctx = FUNC4(pdesc);
	int bs = FUNC2(pdesc->tfm);
	u8 *prev = FUNC0(&ctx->ctx[0], alignmask + 1) + bs;

	ctx->len = 0;
	FUNC3(prev, 0, bs);

	return 0;
}