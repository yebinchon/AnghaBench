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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct pack_midx_entry {int offset; } ;
struct hashfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hashfile*,int) ; 

__attribute__((used)) static size_t FUNC2(struct hashfile *f, uint32_t nr_large_offset,
				       struct pack_midx_entry *objects, uint32_t nr_objects)
{
	struct pack_midx_entry *list = objects, *end = objects + nr_objects;
	size_t written = 0;

	while (nr_large_offset) {
		struct pack_midx_entry *obj;
		uint64_t offset;

		if (list >= end)
			FUNC0("too many large-offset objects");

		obj = list++;
		offset = obj->offset;

		if (!(offset >> 31))
			continue;

		FUNC1(f, offset >> 32);
		FUNC1(f, offset & 0xffffffffUL);
		written += 2 * sizeof(uint32_t);

		nr_large_offset--;
	}

	return written;
}