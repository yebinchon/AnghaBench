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
struct rfkill {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rfkill* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfkill*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct rfkill *rfk = FUNC3(pdev);

	FUNC4(pdev, NULL);
	FUNC1(FUNC0(1));

	if (rfk) {
		FUNC6(rfk);
		FUNC5(rfk);
	}
	rfk = NULL;

	FUNC2(0);

	return 0;
}