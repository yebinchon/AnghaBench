#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pcd_unit {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bio; TYPE_1__* rq_disk; } ;
struct TYPE_5__ {struct pcd_unit* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  do_pcd_read ; 
 int /*<<< orphan*/  nice ; 
 int /*<<< orphan*/  pcd_buf ; 
 int pcd_bufblk ; 
 int pcd_busy ; 
 int /*<<< orphan*/  pcd_count ; 
 struct pcd_unit* pcd_current ; 
 TYPE_2__* pcd_req ; 
 int /*<<< orphan*/  pcd_sector ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	struct pcd_unit *cd;

	if (pcd_busy)
		return;

	if (!pcd_req && !FUNC4())
		return;

	cd = pcd_req->rq_disk->private_data;
	if (cd != pcd_current)
		pcd_bufblk = -1;
	pcd_current = cd;
	pcd_sector = FUNC2(pcd_req);
	pcd_count = FUNC1(pcd_req);
	pcd_buf = FUNC0(pcd_req->bio);
	pcd_busy = 1;
	FUNC3(do_pcd_read, NULL, 0, nice);
}