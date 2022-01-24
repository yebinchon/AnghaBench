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
struct sysc {int /*<<< orphan*/  rsts; int /*<<< orphan*/ * dev; int /*<<< orphan*/  idle_work; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sysc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sysc*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sysc *ddata = FUNC2(pdev);
	int error;

	FUNC0(&ddata->idle_work);

	error = FUNC4(ddata->dev);
	if (error < 0) {
		FUNC5(ddata->dev);
		FUNC3(ddata->dev);
		goto unprepare;
	}

	FUNC1(&pdev->dev);

	FUNC6(&pdev->dev);
	FUNC3(&pdev->dev);
	FUNC7(ddata->rsts);

unprepare:
	FUNC8(ddata);

	return 0;
}