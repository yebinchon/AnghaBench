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
struct ap_config_info {int apxa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct ap_config_info*) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct ap_config_info info;

	if (FUNC0()) {
		if (FUNC1(&info) == 0)
			return info.apxa;
	}

	return 0;
}