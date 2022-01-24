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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_MSIC_BLOCK_AUDIO ; 
 scalar_t__ FUNC0 (struct platform_device*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void *FUNC4(void *info)
{
	struct platform_device *pdev;

	pdev = FUNC2("sst-platform", -1, NULL, 0);

	if (FUNC0(pdev)) {
		FUNC3("failed to create audio platform device\n");
		return NULL;
	}

	return FUNC1(info, INTEL_MSIC_BLOCK_AUDIO);
}