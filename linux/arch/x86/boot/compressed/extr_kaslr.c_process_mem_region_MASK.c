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
struct mem_vector {unsigned long long start; unsigned long long size; } ;
struct TYPE_3__ {unsigned long long start; unsigned long long size; } ;

/* Variables and functions */
 scalar_t__ MAX_SLOT_AREA ; 
 int /*<<< orphan*/  FUNC0 (struct mem_vector*,unsigned long long,unsigned long long) ; 
 void* FUNC1 (unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* immovable_mem ; 
 int /*<<< orphan*/  FUNC3 (struct mem_vector*,TYPE_1__*) ; 
 int num_immovable_mem ; 
 scalar_t__ slot_area_index ; 

__attribute__((used)) static bool FUNC4(struct mem_vector *region,
			       unsigned long long minimum,
			       unsigned long long image_size)
{
	int i;
	/*
	 * If no immovable memory found, or MEMORY_HOTREMOVE disabled,
	 * use @region directly.
	 */
	if (!num_immovable_mem) {
		FUNC0(region, minimum, image_size);

		if (slot_area_index == MAX_SLOT_AREA) {
			FUNC2("Aborted e820/efi memmap scan (slot_areas full)!\n");
			return 1;
		}
		return 0;
	}

#if defined(CONFIG_MEMORY_HOTREMOVE) && defined(CONFIG_ACPI)
	/*
	 * If immovable memory found, filter the intersection between
	 * immovable memory and @region.
	 */
	for (i = 0; i < num_immovable_mem; i++) {
		unsigned long long start, end, entry_end, region_end;
		struct mem_vector entry;

		if (!mem_overlaps(region, &immovable_mem[i]))
			continue;

		start = immovable_mem[i].start;
		end = start + immovable_mem[i].size;
		region_end = region->start + region->size;

		entry.start = clamp(region->start, start, end);
		entry_end = clamp(region_end, start, end);
		entry.size = entry_end - entry.start;

		__process_mem_region(&entry, minimum, image_size);

		if (slot_area_index == MAX_SLOT_AREA) {
			debug_putstr("Aborted e820/efi memmap scan when walking immovable regions(slot_areas full)!\n");
			return 1;
		}
	}
#endif
	return 0;
}