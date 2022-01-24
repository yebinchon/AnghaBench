#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 scalar_t__ PCD_RETRIES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int pcd_bufblk ; 
 int /*<<< orphan*/  pcd_buffer ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* pcd_current ; 
 int /*<<< orphan*/  pcd_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ pcd_retries ; 
 int /*<<< orphan*/  pcd_start ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned long saved_flags;

	if (FUNC3(pcd_current, pcd_buffer, "read block")) {
		if (pcd_retries < PCD_RETRIES) {
			FUNC1(1);
			pcd_retries++;
			FUNC5(pcd_current->pi, pcd_start);
			return;
		}
		pcd_bufblk = -1;
		FUNC2(BLK_STS_IOERR);
		return;
	}

	FUNC0();
	FUNC6(&pcd_lock, saved_flags);
	FUNC4();
	FUNC7(&pcd_lock, saved_flags);
}