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
struct ref_iterator {int /*<<< orphan*/  ordered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct ref_iterator*) ; 
 struct ref_iterator* FUNC2 (int,struct ref_iterator*,struct ref_iterator*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  overlay_iterator_select ; 
 int /*<<< orphan*/  FUNC3 (struct ref_iterator*) ; 

struct ref_iterator *FUNC4(
		struct ref_iterator *front, struct ref_iterator *back)
{
	/*
	 * Optimization: if one of the iterators is empty, return the
	 * other one rather than incurring the overhead of wrapping
	 * them.
	 */
	if (FUNC1(front)) {
		FUNC3(front);
		return back;
	} else if (FUNC1(back)) {
		FUNC3(back);
		return front;
	} else if (!front->ordered || !back->ordered) {
		FUNC0("overlay_ref_iterator requires ordered inputs");
	}

	return FUNC2(1, front, back,
					overlay_iterator_select, NULL);
}