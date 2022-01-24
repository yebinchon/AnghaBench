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
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pcd_busy ; 
 int /*<<< orphan*/  pcd_lock ; 
 int /*<<< orphan*/ * pcd_req ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC6(blk_status_t err)
{
	unsigned long saved_flags;

	FUNC4(&pcd_lock, saved_flags);
	if (!FUNC2(pcd_req, err, FUNC1(pcd_req))) {
		FUNC0(pcd_req, err);
		pcd_req = NULL;
	}
	pcd_busy = 0;
	FUNC3();
	FUNC5(&pcd_lock, saved_flags);
}