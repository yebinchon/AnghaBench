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

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  PCD_TMO ; 
 int /*<<< orphan*/  do_pcd_read_drq ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nice ; 
 int pcd_bufblk ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  pcd_current ; 
 int /*<<< orphan*/  pcd_ready ; 
 int pcd_sector ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	int b, i;
	char rd_cmd[12] = { 0xa8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0 };

	pcd_bufblk = pcd_sector / 4;
	b = pcd_bufblk;
	for (i = 0; i < 4; i++) {
		rd_cmd[5 - i] = b & 0xff;
		b = b >> 8;
	}

	if (FUNC2(pcd_current, rd_cmd, 2048, "read block")) {
		pcd_bufblk = -1;
		FUNC1(BLK_STS_IOERR);
		return;
	}

	FUNC0(1);

	FUNC3(do_pcd_read_drq, pcd_ready, PCD_TMO, nice);
}