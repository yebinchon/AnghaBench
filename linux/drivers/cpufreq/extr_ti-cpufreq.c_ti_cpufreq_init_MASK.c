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
struct of_device_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,struct of_device_id const*,int) ; 
 struct of_device_id* FUNC1 () ; 

__attribute__((used)) static int FUNC2(void)
{
	const struct of_device_id *match;

	/* Check to ensure we are on a compatible platform */
	match = FUNC1();
	if (match)
		FUNC0(NULL, "ti-cpufreq", -1, match,
					      sizeof(*match));

	return 0;
}