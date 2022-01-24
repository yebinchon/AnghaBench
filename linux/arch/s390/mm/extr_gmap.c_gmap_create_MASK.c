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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  gmap_asce; int /*<<< orphan*/  gmap_list; } ;
struct mm_struct {TYPE_1__ context; } ;
struct gmap {unsigned long asce; int /*<<< orphan*/  list; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 struct gmap* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct gmap *FUNC6(struct mm_struct *mm, unsigned long limit)
{
	struct gmap *gmap;
	unsigned long gmap_asce;

	gmap = FUNC1(limit);
	if (!gmap)
		return NULL;
	gmap->mm = mm;
	FUNC4(&mm->context.lock);
	FUNC2(&gmap->list, &mm->context.gmap_list);
	if (FUNC3(&mm->context.gmap_list))
		gmap_asce = gmap->asce;
	else
		gmap_asce = -1UL;
	FUNC0(mm->context.gmap_asce, gmap_asce);
	FUNC5(&mm->context.lock);
	return gmap;
}