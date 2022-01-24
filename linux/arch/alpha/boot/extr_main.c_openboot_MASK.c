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
 int /*<<< orphan*/  ENV_BOOTED_DEV ; 
 long FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 long FUNC1 (char*,long) ; 

__attribute__((used)) static inline long FUNC2(void)
{
	char bootdev[256];
	long result;

	result = FUNC0(ENV_BOOTED_DEV, bootdev, 255);
	if (result < 0)
		return result;
	return FUNC1(bootdev, result & 255);
}