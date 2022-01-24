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
struct stp_sstpi {int dummy; } ;
struct clock_sync_data {unsigned long long clock_delta; int in_sync; int /*<<< orphan*/  cpus; } ;
struct TYPE_3__ {int tmd; scalar_t__* todoff; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  STP_OP_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__ stp_info ; 
 int /*<<< orphan*/  stp_page ; 
 scalar_t__ FUNC11 (int*,int) ; 

__attribute__((used)) static int FUNC12(void *data)
{
	struct clock_sync_data *sync = data;
	unsigned long long clock_delta;
	static int first;
	int rc;

	FUNC10();
	if (FUNC11(&first, 1) == 0) {
		/* Wait until all other cpus entered the sync function. */
		while (FUNC3(&sync->cpus) != 0)
			FUNC8();
		rc = 0;
		if (stp_info.todoff[0] || stp_info.todoff[1] ||
		    stp_info.todoff[2] || stp_info.todoff[3] ||
		    stp_info.tmd != 2) {
			rc = FUNC4(stp_page, STP_OP_SYNC, 0,
					&clock_delta);
			if (rc == 0) {
				sync->clock_delta = clock_delta;
				FUNC6(clock_delta);
				rc = FUNC5(stp_page, &stp_info,
						sizeof(struct stp_sstpi));
				if (rc == 0 && stp_info.tmd != 2)
					rc = -EAGAIN;
			}
		}
		sync->in_sync = rc ? -EAGAIN : 1;
		FUNC11(&first, 0);
	} else {
		/* Slave */
		FUNC2(&sync->cpus);
		/* Wait for in_sync to be set. */
		while (FUNC0(sync->in_sync) == 0)
			FUNC1(1);
	}
	if (sync->in_sync != 1)
		/* Didn't work. Clear per-cpu in sync bit again. */
		FUNC9(NULL);
	/* Apply clock delta to per-CPU fields of this CPU. */
	FUNC7(sync->clock_delta);

	return 0;
}