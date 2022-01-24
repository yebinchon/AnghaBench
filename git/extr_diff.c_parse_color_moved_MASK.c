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

/* Variables and functions */
 int COLOR_MOVED_BLOCKS ; 
 int COLOR_MOVED_DEFAULT ; 
 int COLOR_MOVED_NO ; 
 int COLOR_MOVED_PLAIN ; 
 int COLOR_MOVED_ZEBRA ; 
 int COLOR_MOVED_ZEBRA_DIM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *arg)
{
	switch (FUNC2(arg)) {
	case 0:
		return COLOR_MOVED_NO;
	case 1:
		return COLOR_MOVED_DEFAULT;
	default:
		break;
	}

	if (!FUNC3(arg, "no"))
		return COLOR_MOVED_NO;
	else if (!FUNC3(arg, "plain"))
		return COLOR_MOVED_PLAIN;
	else if (!FUNC3(arg, "blocks"))
		return COLOR_MOVED_BLOCKS;
	else if (!FUNC3(arg, "zebra"))
		return COLOR_MOVED_ZEBRA;
	else if (!FUNC3(arg, "default"))
		return COLOR_MOVED_DEFAULT;
	else if (!FUNC3(arg, "dimmed-zebra"))
		return COLOR_MOVED_ZEBRA_DIM;
	else if (!FUNC3(arg, "dimmed_zebra"))
		return COLOR_MOVED_ZEBRA_DIM;
	else
		return FUNC1(FUNC0("color moved setting must be one of 'no', 'default', 'blocks', 'zebra', 'dimmed-zebra', 'plain'"));
}