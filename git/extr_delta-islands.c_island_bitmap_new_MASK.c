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
struct island_bitmap {int refcount; } ;

/* Variables and functions */
 int island_bitmap_size ; 
 int /*<<< orphan*/  FUNC0 (struct island_bitmap*,struct island_bitmap const*,size_t) ; 
 struct island_bitmap* FUNC1 (int,size_t) ; 

__attribute__((used)) static struct island_bitmap *FUNC2(const struct island_bitmap *old)
{
	size_t size = sizeof(struct island_bitmap) + (island_bitmap_size * 4);
	struct island_bitmap *b = FUNC1(1, size);

	if (old)
		FUNC0(b, old, size);

	b->refcount = 1;
	return b;
}