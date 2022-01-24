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
struct omap_hwmod {int rst_lines_cnt; TYPE_1__* rst_lines; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_hwmod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_hwmod*,int /*<<< orphan*/ ) ; 

int FUNC2(struct omap_hwmod *oh)
{
	int i;

	for (i = 0; i < oh->rst_lines_cnt; i++) {
		FUNC0(oh, oh->rst_lines[i].name);
		FUNC1(oh, oh->rst_lines[i].name);
	}

	return 0;
}