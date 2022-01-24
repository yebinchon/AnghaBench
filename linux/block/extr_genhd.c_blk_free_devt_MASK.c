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
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 scalar_t__ BLOCK_EXT_MAJOR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext_devt_idr ; 
 int /*<<< orphan*/  ext_devt_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(dev_t devt)
{
	if (devt == FUNC2(0, 0))
		return;

	if (FUNC0(devt) == BLOCK_EXT_MAJOR) {
		FUNC5(&ext_devt_lock);
		FUNC4(&ext_devt_idr, FUNC3(FUNC1(devt)));
		FUNC6(&ext_devt_lock);
	}
}