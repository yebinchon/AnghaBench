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
struct gmap {int /*<<< orphan*/  guest_table_lock; int /*<<< orphan*/  host_to_guest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PMD_SHIFT ; 
 unsigned long _SEGMENT_ENTRY_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (struct gmap*) ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gmap *gmap, unsigned long vmaddr)
{
	unsigned long *entry;
	int flush = 0;

	FUNC0(FUNC1(gmap));
	FUNC3(&gmap->guest_table_lock);
	entry = FUNC2(&gmap->host_to_guest, vmaddr >> PMD_SHIFT);
	if (entry) {
		flush = (*entry != _SEGMENT_ENTRY_EMPTY);
		*entry = _SEGMENT_ENTRY_EMPTY;
	}
	FUNC4(&gmap->guest_table_lock);
	return flush;
}