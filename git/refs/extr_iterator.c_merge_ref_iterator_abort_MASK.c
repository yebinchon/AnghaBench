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
struct merge_ref_iterator {scalar_t__ iter1; scalar_t__ iter0; } ;

/* Variables and functions */
 int ITER_DONE ; 
 int ITER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ref_iterator*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ref_iterator *ref_iterator)
{
	struct merge_ref_iterator *iter =
		(struct merge_ref_iterator *)ref_iterator;
	int ok = ITER_DONE;

	if (iter->iter0) {
		if (FUNC1(iter->iter0) != ITER_DONE)
			ok = ITER_ERROR;
	}
	if (iter->iter1) {
		if (FUNC1(iter->iter1) != ITER_DONE)
			ok = ITER_ERROR;
	}
	FUNC0(ref_iterator);
	return ok;
}