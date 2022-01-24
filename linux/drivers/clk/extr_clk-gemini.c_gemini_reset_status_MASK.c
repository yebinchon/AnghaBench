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
struct reset_controller_dev {int dummy; } ;
struct gemini_reset {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  GEMINI_GLOBAL_SOFT_RESET ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct gemini_reset* FUNC2 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
			     unsigned long id)
{
	struct gemini_reset *gr = FUNC2(rcdev);
	u32 val;
	int ret;

	ret = FUNC1(gr->map, GEMINI_GLOBAL_SOFT_RESET, &val);
	if (ret)
		return ret;

	return !!(val & FUNC0(id));
}