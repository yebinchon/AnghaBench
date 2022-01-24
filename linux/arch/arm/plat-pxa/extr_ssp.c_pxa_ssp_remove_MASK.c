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
struct ssp_device {int /*<<< orphan*/  node; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ssp_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  ssp_lock ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ssp_device *ssp;

	ssp = FUNC3(pdev);
	if (ssp == NULL)
		return -ENODEV;

	FUNC1(&ssp_lock);
	FUNC0(&ssp->node);
	FUNC2(&ssp_lock);

	return 0;
}