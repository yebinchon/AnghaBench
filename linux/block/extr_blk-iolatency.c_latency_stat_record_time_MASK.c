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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  total; int /*<<< orphan*/  missed; } ;
struct latency_stat {int /*<<< orphan*/  rqs; TYPE_1__ ps; } ;
struct iolatency_grp {int /*<<< orphan*/  min_lat_nsec; scalar_t__ ssd; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct latency_stat* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct latency_stat*) ; 

__attribute__((used)) static inline void FUNC3(struct iolatency_grp *iolat,
					    u64 req_time)
{
	struct latency_stat *stat = FUNC1(iolat->stats);
	if (iolat->ssd) {
		if (req_time >= iolat->min_lat_nsec)
			stat->ps.missed++;
		stat->ps.total++;
	} else
		FUNC0(&stat->rqs, req_time);
	FUNC2(stat);
}