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

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long SHIFT_PER_LONG ; 
 unsigned long SPACEID_SHIFT ; 
 unsigned long* dirty_space_id ; 
 int /*<<< orphan*/  dirty_space_ids ; 
 int /*<<< orphan*/  sid_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(unsigned long spaceid)
{
	unsigned long index = spaceid >> SPACEID_SHIFT;
	unsigned long *dirty_space_offset;

	dirty_space_offset = dirty_space_id + (index >> SHIFT_PER_LONG);
	index &= (BITS_PER_LONG - 1);

	FUNC1(&sid_lock);

	FUNC0(*dirty_space_offset & (1L << index)); /* attempt to free space id twice */

	*dirty_space_offset |= (1L << index);
	dirty_space_ids++;

	FUNC2(&sid_lock);
}