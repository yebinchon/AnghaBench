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
struct rtlx_info {int ap_int_pending; } ;
struct TYPE_2__ {int /*<<< orphan*/  rt_queue; int /*<<< orphan*/  lx_queue; } ;

/* Variables and functions */
 int RTLX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* channel_wqs ; 
 scalar_t__ FUNC1 () ; 
 struct rtlx_info** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;
	struct rtlx_info *info;
	struct rtlx_info **p = FUNC2(FUNC0());

	if (p == NULL || *p == NULL)
		return;

	info = *p;

	if (info->ap_int_pending == 1 && FUNC1() == 0) {
		for (i = 0; i < RTLX_CHANNELS; i++) {
			FUNC3(&channel_wqs[i].lx_queue);
			FUNC3(&channel_wqs[i].rt_queue);
		}
		info->ap_int_pending = 0;
	}
}