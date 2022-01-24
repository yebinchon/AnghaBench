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
typedef  int uint64_t ;
typedef  int u32 ;
struct timespec64 {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct pvclock_wall_clock {int version; int sec; int /*<<< orphan*/  nsec; scalar_t__ sec_hi; } ;
struct shared_info {struct pvclock_wall_clock wc; } ;

/* Variables and functions */
 struct shared_info* HYPERVISOR_shared_info ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct timespec64 FUNC2 (struct timespec64,struct timespec64) ; 

__attribute__((used)) static void FUNC3(struct timespec64 *ts)
{
	u32 version;
	struct timespec64 now, ts_monotonic;
	struct shared_info *s = HYPERVISOR_shared_info;
	struct pvclock_wall_clock *wall_clock = &(s->wc);

	/* get wallclock at system boot */
	do {
		version = wall_clock->version;
		FUNC1();		/* fetch version before time */
		now.tv_sec  = ((uint64_t)wall_clock->sec_hi << 32) | wall_clock->sec;
		now.tv_nsec = wall_clock->nsec;
		FUNC1();		/* fetch time before checking version */
	} while ((wall_clock->version & 1) || (version != wall_clock->version));

	/* time since system boot */
	FUNC0(&ts_monotonic);
	*ts = FUNC2(now, ts_monotonic);
}