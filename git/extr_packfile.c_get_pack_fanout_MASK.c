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
typedef  size_t uint32_t ;
struct packed_git {size_t* index_data; int index_version; } ;

/* Variables and functions */
 size_t FUNC0 (size_t const) ; 
 scalar_t__ FUNC1 (struct packed_git*) ; 

uint32_t FUNC2(struct packed_git *p, uint32_t value)
{
	const uint32_t *level1_ofs = p->index_data;

	if (!level1_ofs) {
		if (FUNC1(p))
			return 0;
		level1_ofs = p->index_data;
	}

	if (p->index_version > 1) {
		level1_ofs += 2;
	}

	return FUNC0(level1_ofs[value]);
}