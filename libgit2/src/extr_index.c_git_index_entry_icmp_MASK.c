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
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const void *a, const void *b)
{
	int diff;
	const git_index_entry *entry_a = a;
	const git_index_entry *entry_b = b;

	diff = FUNC1(entry_a->path, entry_b->path);

	if (diff == 0)
		diff = (FUNC0(entry_a) - FUNC0(entry_b));

	return diff;
}