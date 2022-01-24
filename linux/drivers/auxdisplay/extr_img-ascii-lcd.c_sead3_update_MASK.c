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
struct img_ascii_lcd_ctx {unsigned int* curr; scalar_t__ offset; int /*<<< orphan*/  regmap; TYPE_1__* cfg; } ;
struct TYPE_2__ {unsigned int num_chars; } ;

/* Variables and functions */
 scalar_t__ SEAD3_REG_LCD_CTRL ; 
 unsigned int SEAD3_REG_LCD_CTRL_SETDRAM ; 
 scalar_t__ SEAD3_REG_LCD_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int FUNC2 (struct img_ascii_lcd_ctx*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct img_ascii_lcd_ctx *ctx)
{
	unsigned int i;
	int err = 0;

	for (i = 0; i < ctx->cfg->num_chars; i++) {
		err = FUNC2(ctx);
		if (err)
			break;

		err = FUNC1(ctx->regmap,
				   ctx->offset + SEAD3_REG_LCD_CTRL,
				   SEAD3_REG_LCD_CTRL_SETDRAM | i);
		if (err)
			break;

		err = FUNC2(ctx);
		if (err)
			break;

		err = FUNC1(ctx->regmap,
				   ctx->offset + SEAD3_REG_LCD_DATA,
				   ctx->curr[i]);
		if (err)
			break;
	}

	if (FUNC3(err))
		FUNC0("Failed to update LCD display: %d\n", err);
}