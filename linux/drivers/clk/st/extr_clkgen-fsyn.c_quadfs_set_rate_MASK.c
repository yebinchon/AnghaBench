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
struct stm_fs {int dummy; } ;
struct st_clk_quadfs_fsynth {int dummy; } ;
struct clk_hw {int dummy; } ;
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct stm_fs*,int /*<<< orphan*/ ,int) ; 
 long FUNC1 (struct clk_hw*,unsigned long,unsigned long,struct stm_fs*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_clk_quadfs_fsynth*,struct stm_fs*) ; 
 struct st_clk_quadfs_fsynth* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
				  unsigned long parent_rate)
{
	struct st_clk_quadfs_fsynth *fs = FUNC3(hw);
	struct stm_fs params;
	long hwrate;
	int FUNC5(i);

	if (!rate || !parent_rate)
		return -EINVAL;

	FUNC0(&params, 0, sizeof(struct stm_fs));

	hwrate = FUNC1(hw, rate, parent_rate, &params);
	if (!hwrate)
		return -EINVAL;

	FUNC2(fs, &params);

	return 0;
}