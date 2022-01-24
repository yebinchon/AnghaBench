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
struct regmap_mmio_context {unsigned int (* reg_read ) (struct regmap_mmio_context*,unsigned int) ;int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct regmap_mmio_context*,unsigned int) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int reg, unsigned int *val)
{
	struct regmap_mmio_context *ctx = context;
	int ret;

	if (!FUNC0(ctx->clk)) {
		ret = FUNC2(ctx->clk);
		if (ret < 0)
			return ret;
	}

	*val = ctx->reg_read(ctx, reg);

	if (!FUNC0(ctx->clk))
		FUNC1(ctx->clk);

	return 0;
}