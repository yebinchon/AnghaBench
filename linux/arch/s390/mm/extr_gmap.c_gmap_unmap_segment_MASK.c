#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gmap {TYPE_1__* mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int PMD_SIZE ; 
 int FUNC1 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct gmap *gmap, unsigned long to, unsigned long len)
{
	unsigned long off;
	int flush;

	FUNC0(FUNC4(gmap));
	if ((to | len) & (PMD_SIZE - 1))
		return -EINVAL;
	if (len == 0 || to + len < to)
		return -EINVAL;

	flush = 0;
	FUNC2(&gmap->mm->mmap_sem);
	for (off = 0; off < len; off += PMD_SIZE)
		flush |= FUNC1(gmap, to + off);
	FUNC5(&gmap->mm->mmap_sem);
	if (flush)
		FUNC3(gmap);
	return 0;
}