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
 int EINVAL ; 
 int /*<<< orphan*/  GMAP_NOTIFY_MPROT ; 
 int /*<<< orphan*/  MACHINE_HAS_ESOP ; 
 unsigned long PAGE_MASK ; 
 int PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct gmap*) ; 
 int FUNC2 (struct gmap*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct gmap *gmap, unsigned long gaddr,
			 unsigned long len, int prot)
{
	int rc;

	if ((gaddr & ~PAGE_MASK) || (len & ~PAGE_MASK) || FUNC1(gmap))
		return -EINVAL;
	if (!MACHINE_HAS_ESOP && prot == PROT_READ)
		return -EINVAL;
	FUNC0(&gmap->mm->mmap_sem);
	rc = FUNC2(gmap, gaddr, len, prot, GMAP_NOTIFY_MPROT);
	FUNC3(&gmap->mm->mmap_sem);
	return rc;
}