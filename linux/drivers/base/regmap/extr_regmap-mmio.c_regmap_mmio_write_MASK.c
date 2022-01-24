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
struct regmap_mmio_context {int /*<<< orphan*/  clk; int /*<<< orphan*/  (* reg_write ) (struct regmap_mmio_context*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap_mmio_context*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int reg, unsigned int val)
{
	struct regmap_mmio_context *ctx = context;
	int ret;

	if (!FUNC0(ctx->clk)) {
		ret = FUNC2(ctx->clk);
		if (ret < 0)
			return ret;
	}

	ctx->reg_write(ctx, reg, val);

	if (!FUNC0(ctx->clk))
		FUNC1(ctx->clk);

	return 0;
}