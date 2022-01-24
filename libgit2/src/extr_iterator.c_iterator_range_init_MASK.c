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
struct TYPE_3__ {int ended; int /*<<< orphan*/ * start; int /*<<< orphan*/  started; int /*<<< orphan*/ * end; void* end_len; void* start_len; } ;
typedef  TYPE_1__ git_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
	git_iterator *iter, const char *start, const char *end)
{
	if (start && *start) {
		iter->start = FUNC1(start);
		FUNC0(iter->start);

		iter->start_len = FUNC2(iter->start);
	}

	if (end && *end) {
		iter->end = FUNC1(end);
		FUNC0(iter->end);

		iter->end_len = FUNC2(iter->end);
	}

	iter->started = (iter->start == NULL);
	iter->ended = false;

	return 0;
}