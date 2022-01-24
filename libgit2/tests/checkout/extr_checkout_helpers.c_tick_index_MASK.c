#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct p_timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {struct timespec mtime; } ;
struct TYPE_7__ {TYPE_1__ stamp; int /*<<< orphan*/  on_disk; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct p_timeval*) ; 

void FUNC5(git_index *index)
{
	struct timespec ts;
	struct p_timeval times[2];

	FUNC0(index->on_disk);
	FUNC0(FUNC2(index));

	FUNC1(FUNC3(index, true));
	ts = index->stamp.mtime;

	times[0].tv_sec = ts.tv_sec;
	times[0].tv_usec = ts.tv_nsec / 1000;
	times[1].tv_sec = ts.tv_sec + 5;
	times[1].tv_usec = ts.tv_nsec / 1000;

	FUNC1(FUNC4(FUNC2(index), times));
	FUNC1(FUNC3(index, true));
}