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
struct ref_iterator {int dummy; } ;
struct packed_ref_iterator {int /*<<< orphan*/  snapshot; int /*<<< orphan*/  refname_buf; } ;

/* Variables and functions */
 int ITER_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct ref_iterator*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ref_iterator *ref_iterator)
{
	struct packed_ref_iterator *iter =
		(struct packed_ref_iterator *)ref_iterator;
	int ok = ITER_DONE;

	FUNC2(&iter->refname_buf);
	FUNC1(iter->snapshot);
	FUNC0(ref_iterator);
	return ok;
}