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
struct TYPE_4__ {int track; int dirty; TYPE_1__* dtype; } ;
struct TYPE_3__ {int (* read_fkt ) (int) ;} ;

/* Variables and functions */
 int MAX_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int flush_track_timer ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int) ; 
 TYPE_2__* unit ; 

__attribute__((used)) static int FUNC8(int drive, int track)
{
	int error, errcnt;

	drive&=3;
	if (unit[drive].track == track)
		return 0;
	FUNC3(drive);
	if (!FUNC1(drive)) {
		FUNC6();
		return -1;
	}

	if (unit[drive].dirty == 1) {
		FUNC0 (flush_track_timer + drive);
		FUNC4 (drive);
	}
	errcnt = 0;
	while (errcnt < MAX_ERRORS) {
		if (!FUNC2(drive, track))
			return -1;
		FUNC5(drive);
		error = (*unit[drive].dtype->read_fkt)(drive);
		if (error == 0) {
			FUNC6();
			return 0;
		}
		/* Read Error Handling: recalibrate and try again */
		unit[drive].track = -1;
		errcnt++;
	}
	FUNC6();
	return -1;
}