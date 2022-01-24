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
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/  clk_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX_NAME_LEN ; 
 TYPE_1__* clock ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t) ; 

__attribute__((used)) static int FUNC2(u32 clk_id, char *clk_name)
{
	int ret;

	ret = FUNC1(clk_id);
	if (ret == 1) {
		FUNC0(clk_name, clock[clk_id].clk_name, MAX_NAME_LEN);
		return 0;
	}

	return ret == 0 ? -EINVAL : ret;
}