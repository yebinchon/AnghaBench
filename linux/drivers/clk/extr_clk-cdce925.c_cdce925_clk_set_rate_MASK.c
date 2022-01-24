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
struct clk_hw {int dummy; } ;
struct clk_cdce925_output {int /*<<< orphan*/  pdiv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 struct clk_cdce925_output* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct clk_cdce925_output *data = FUNC1(hw);

	data->pdiv = FUNC0(rate, parent_rate);

	return 0;
}