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
struct TYPE_3__ {scalar_t__ end_len; int /*<<< orphan*/ * end; scalar_t__ start_len; int /*<<< orphan*/ * start; } ;
typedef  TYPE_1__ git_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(git_iterator *iter)
{
	if (iter->start) {
		FUNC0(iter->start);
		iter->start = NULL;
		iter->start_len = 0;
	}

	if (iter->end) {
		FUNC0(iter->end);
		iter->end = NULL;
		iter->end_len = 0;
	}
}