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
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_3__ {scalar_t__ state; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ background_thread_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  background_thread_lock ; 
 scalar_t__ background_thread_paused ; 
 scalar_t__ background_thread_started ; 
 scalar_t__ have_background_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(tsd_t *tsd, unsigned arena_ind) {
	if (have_background_thread) {
		if (FUNC1()) {
			background_thread_info_t *info =
			    FUNC2(arena_ind);
			FUNC0(info->state == background_thread_paused);
			FUNC3(FUNC5(tsd), &info->mtx);
			info->state = background_thread_started;
			FUNC4(FUNC5(tsd), &info->mtx);
		}
		FUNC4(FUNC5(tsd), &background_thread_lock);
	}
}