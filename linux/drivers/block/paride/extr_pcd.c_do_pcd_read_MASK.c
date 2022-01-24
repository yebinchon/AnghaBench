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
struct TYPE_2__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int pcd_busy ; 
 int /*<<< orphan*/  pcd_count ; 
 TYPE_1__* pcd_current ; 
 scalar_t__ pcd_retries ; 
 int /*<<< orphan*/  pcd_start ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	pcd_busy = 1;
	pcd_retries = 0;
	FUNC1();
	if (!pcd_count) {
		FUNC0(0);
		return;
	}

	FUNC2(pcd_current->pi, pcd_start);
}