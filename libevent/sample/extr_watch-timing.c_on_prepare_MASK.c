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
struct timeval {long double tv_usec; scalar_t__ tv_sec; } ;
struct evwatch_prepare_cb_info {int dummy; } ;
struct evwatch {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;

/* Variables and functions */
 TYPE_1__ check_time ; 
 int /*<<< orphan*/  durations ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (struct evwatch_prepare_cb_info const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  expected ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  prepare_time ; 

__attribute__((used)) static void FUNC4(struct evwatch *watcher, const struct evwatch_prepare_cb_info *info, void *arg)
{
	struct timeval duration;
	FUNC0(&prepare_time, NULL);
	FUNC2(info, &expected);
	if (check_time.tv_sec != 0) {
		FUNC1(&prepare_time, &check_time, &duration);
		FUNC3(durations, duration.tv_sec + duration.tv_usec / 1000000.0l);
	}
}