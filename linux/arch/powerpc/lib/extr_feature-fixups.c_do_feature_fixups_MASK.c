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
struct fixup_entry {int /*<<< orphan*/  alt_end_off; int /*<<< orphan*/  alt_start_off; int /*<<< orphan*/  end_off; int /*<<< orphan*/  start_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fixup_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,struct fixup_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned long value, void *fixup_start, void *fixup_end)
{
	struct fixup_entry *fcur, *fend;

	fcur = fixup_start;
	fend = fixup_end;

	for (; fcur < fend; fcur++) {
		if (FUNC2(value, fcur)) {
			FUNC0(1);
			FUNC3("Unable to patch feature section at %p - %p" \
				" with %p - %p\n",
				FUNC1(fcur, fcur->start_off),
				FUNC1(fcur, fcur->end_off),
				FUNC1(fcur, fcur->alt_start_off),
				FUNC1(fcur, fcur->alt_end_off));
		}
	}
}