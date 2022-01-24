#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char prb; } ;
struct TYPE_5__ {int track; TYPE_1__* type; } ;
struct TYPE_4__ {int /*<<< orphan*/  settle_time; int /*<<< orphan*/  step_delay; int /*<<< orphan*/  side_time; } ;

/* Variables and functions */
 unsigned char DSKDIREC ; 
 unsigned char DSKSIDE ; 
 unsigned char DSKSTEP ; 
 TYPE_3__ ciab ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_2__* unit ; 

__attribute__((used)) static int FUNC9(int drive, int track)
{
	unsigned char prb;
	int cnt;

#ifdef DEBUG
	printk("seeking drive %d to track %d\n",drive,track);
#endif
	drive &= 3;
	FUNC4(drive);
	if (unit[drive].track == track) {
		FUNC7();
		return 1;
	}
	if (!FUNC2(drive)) {
		FUNC7();
		return 0;
	}
	if (unit[drive].track < 0 && !FUNC0(drive)) {
		FUNC7();
		return 0;
	}

	FUNC3 (drive);
	cnt = unit[drive].track/2 - track/2;
	prb = ciab.prb;
	prb |= DSKSIDE | DSKDIREC;
	if (track % 2 != 0)
		prb &= ~DSKSIDE;
	if (cnt < 0) {
		cnt = - cnt;
		prb &= ~DSKDIREC;
	}
	ciab.prb = prb;
	if (track % 2 != unit[drive].track % 2)
		FUNC5 (unit[drive].type->side_time);
	unit[drive].track = track;
	if (cnt == 0) {
		FUNC7();
		FUNC1(drive);
		return 1;
	}
	do {
		prb &= ~DSKSTEP;
		ciab.prb = prb;
		prb |= DSKSTEP;
		FUNC8 (1);
		ciab.prb = prb;
		FUNC5 (unit[drive].type->step_delay);
	} while (--cnt != 0);
	FUNC5 (unit[drive].type->settle_time);

	FUNC7();
	FUNC1(drive);
	return 1;
}