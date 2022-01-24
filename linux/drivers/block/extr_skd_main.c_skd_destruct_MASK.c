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
struct skd_device {TYPE_1__* pdev; int /*<<< orphan*/  msgbuf_cache; int /*<<< orphan*/  sglist_cache; int /*<<< orphan*/  databuf_cache; int /*<<< orphan*/  start_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct skd_device*) ; 

__attribute__((used)) static void FUNC8(struct skd_device *skdev)
{
	if (skdev == NULL)
		return;

	FUNC0(&skdev->start_queue);

	FUNC1(&skdev->pdev->dev, "disk\n");
	FUNC4(skdev);

	FUNC1(&skdev->pdev->dev, "sksb\n");
	FUNC7(skdev);

	FUNC1(&skdev->pdev->dev, "skmsg\n");
	FUNC6(skdev);

	FUNC1(&skdev->pdev->dev, "skcomp\n");
	FUNC5(skdev);

	FUNC3(skdev->databuf_cache);
	FUNC3(skdev->sglist_cache);
	FUNC3(skdev->msgbuf_cache);

	FUNC1(&skdev->pdev->dev, "skdev\n");
	FUNC2(skdev);
}