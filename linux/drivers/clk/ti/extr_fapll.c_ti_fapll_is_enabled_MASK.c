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
typedef  int u32 ;
struct fapll_data {int /*<<< orphan*/  base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FAPLL_MAIN_PLLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct fapll_data* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct fapll_data *fd = FUNC1(hw);
	u32 v = FUNC0(fd->base);

	return v & FAPLL_MAIN_PLLEN;
}