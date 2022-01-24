#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  gdrom_rq; TYPE_1__* disk; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDROM_HARD_SECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ gd ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	FUNC0(gd.gdrom_rq, GDROM_HARD_SECTOR);
	/* using DMA so memory will need to be contiguous */
	FUNC2(gd.gdrom_rq, 1);
	/* set a large max size to get most from DMA */
	FUNC1(gd.gdrom_rq, 0x40000);
	gd.disk->queue = gd.gdrom_rq;
	return FUNC3();
}