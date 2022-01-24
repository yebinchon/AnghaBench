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
struct gmap {unsigned long asce_end; TYPE_1__* mm; int /*<<< orphan*/  guest_to_host; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned long PMD_SHIFT ; 
 int PMD_SIZE ; 
 unsigned long TASK_SIZE_MAX ; 
 int FUNC1 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct gmap*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct gmap *gmap, unsigned long from,
		     unsigned long to, unsigned long len)
{
	unsigned long off;
	int flush;

	FUNC0(FUNC4(gmap));
	if ((from | to | len) & (PMD_SIZE - 1))
		return -EINVAL;
	if (len == 0 || from + len < from || to + len < to ||
	    from + len - 1 > TASK_SIZE_MAX || to + len - 1 > gmap->asce_end)
		return -EINVAL;

	flush = 0;
	FUNC2(&gmap->mm->mmap_sem);
	for (off = 0; off < len; off += PMD_SIZE) {
		/* Remove old translation */
		flush |= FUNC1(gmap, to + off);
		/* Store new translation */
		if (FUNC6(&gmap->guest_to_host,
				      (to + off) >> PMD_SHIFT,
				      (void *) from + off))
			break;
	}
	FUNC7(&gmap->mm->mmap_sem);
	if (flush)
		FUNC3(gmap);
	if (off >= len)
		return 0;
	FUNC5(gmap, to, len);
	return -ENOMEM;
}