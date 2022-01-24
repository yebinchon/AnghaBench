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
typedef  int /*<<< orphan*/  u8 ;
struct clk_si5341_output {TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_si5341_output*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk_si5341_output *output, u8 index)
{
	return FUNC1(output->data->regmap,
		FUNC0(output), 0x07, index);
}