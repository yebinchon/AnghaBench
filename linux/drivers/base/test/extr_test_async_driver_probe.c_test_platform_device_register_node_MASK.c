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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (int) ; 
 int NUMA_NO_NODE ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct platform_device *
FUNC5(char *name, int id, int nid)
{
	struct platform_device *pdev;
	int ret;

	pdev = FUNC2(name, id);
	if (!pdev)
		return NULL;

	if (nid != NUMA_NO_NODE)
		FUNC4(&pdev->dev, nid);

	ret = FUNC1(pdev);
	if (ret) {
		FUNC3(pdev);
		return FUNC0(ret);
	}

	return pdev;

}