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
 scalar_t__ acpi_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  sci_irq ; 
 int /*<<< orphan*/  sci_work ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	FUNC7(pdev);
	FUNC3(sci_irq, pdev);
	FUNC0(&sci_work);
	FUNC2();
	FUNC4();
	FUNC5();
	FUNC1();
	FUNC6();
	acpi_base = 0;
	return 0;
}