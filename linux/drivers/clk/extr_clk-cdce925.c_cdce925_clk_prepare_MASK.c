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
 int /*<<< orphan*/  FUNC0 (struct clk_cdce925_output*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_cdce925_output*,int /*<<< orphan*/ ) ; 
 struct clk_cdce925_output* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_cdce925_output *data = FUNC2(hw);

	FUNC1(data, data->pdiv);
	FUNC0(data);
	return 0;
}