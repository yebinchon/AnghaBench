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
struct reset_vec_info {int cpu; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void (*) (void*),struct reset_vec_info*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void *vinfo)
{
	struct reset_vec_info *info = vinfo;
	int shift = info->cpu & 0x01 ? 16 : 0;
	u32 mask = ~(0xffff << shift), val = info->val >> 16;

	FUNC2();
	if (FUNC6() > 0) {
		FUNC5(0, &bmips_set_reset_vec_remote,
					 info, 1);
	} else {
		if (info->cpu & 0x02) {
			/* BMIPS5200 "should" use mask/shift, but it's buggy */
			FUNC1(0xa0, (val << 16) | val);
			FUNC0(0xa0);
		} else {
			FUNC7((FUNC4() & mask) |
					      (val << shift));
		}
	}
	FUNC3();
}