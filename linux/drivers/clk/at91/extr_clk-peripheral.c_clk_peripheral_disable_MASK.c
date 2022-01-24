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
typedef  scalar_t__ u32 ;
struct clk_peripheral {scalar_t__ id; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int AT91_PMC_PCDR ; 
 int AT91_PMC_PCDR1 ; 
 scalar_t__ PERIPHERAL_ID_MAX ; 
 scalar_t__ PERIPHERAL_ID_MIN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct clk_peripheral* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct clk_peripheral *periph = FUNC2(hw);
	int offset = AT91_PMC_PCDR;
	u32 id = periph->id;

	if (id < PERIPHERAL_ID_MIN)
		return;
	if (id > PERIPHERAL_ID_MAX)
		offset = AT91_PMC_PCDR1;
	FUNC1(periph->regmap, offset, FUNC0(id));
}