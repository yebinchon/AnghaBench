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
struct vas_window {void* uwc_map; void* hvwc_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vas_window*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct vas_window*,int /*<<< orphan*/ *,int*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vas_window*) ; 

int FUNC4(struct vas_window *window)
{
	int len;
	u64 start;

	FUNC0(window, &start, &len);
	window->hvwc_map = FUNC2("HVWCM_Window", start, len);

	FUNC1(window, &start, &len);
	window->uwc_map = FUNC2("UWCM_Window", start, len);

	if (!window->hvwc_map || !window->uwc_map) {
		FUNC3(window);
		return -1;
	}

	return 0;
}