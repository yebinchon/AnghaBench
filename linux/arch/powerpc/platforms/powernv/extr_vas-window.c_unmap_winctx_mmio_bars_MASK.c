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
typedef  int /*<<< orphan*/  u64 ;
struct vas_window {int /*<<< orphan*/ * uwc_map; int /*<<< orphan*/ * hvwc_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vas_window*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct vas_window*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vas_mutex ; 

__attribute__((used)) static void FUNC5(struct vas_window *window)
{
	int len;
	void *uwc_map;
	void *hvwc_map;
	u64 busaddr_start;

	FUNC2(&vas_mutex);

	hvwc_map = window->hvwc_map;
	window->hvwc_map = NULL;

	uwc_map = window->uwc_map;
	window->uwc_map = NULL;

	FUNC3(&vas_mutex);

	if (hvwc_map) {
		FUNC0(window, &busaddr_start, &len);
		FUNC4(hvwc_map, busaddr_start, len);
	}

	if (uwc_map) {
		FUNC1(window, &busaddr_start, &len);
		FUNC4(uwc_map, busaddr_start, len);
	}
}