#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct of_reconfig_data {TYPE_2__* prop; TYPE_1__* old_prop; } ;
struct of_drconf_cell_v1 {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ value; } ;

/* Variables and functions */
 int DRCONF_MEM_ASSIGNED ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ rtas_hp_event ; 

__attribute__((used)) static int FUNC5(struct of_reconfig_data *pr)
{
	struct of_drconf_cell_v1 *new_drmem, *old_drmem;
	unsigned long memblock_size;
	u32 entries;
	__be32 *p;
	int i, rc = -EINVAL;

	if (rtas_hp_event)
		return 0;

	memblock_size = FUNC3();
	if (!memblock_size)
		return -EINVAL;

	if (!pr->old_prop)
		return 0;

	p = (__be32 *) pr->old_prop->value;
	if (!p)
		return -EINVAL;

	/* The first int of the property is the number of lmb's described
	 * by the property. This is followed by an array of of_drconf_cell
	 * entries. Get the number of entries and skip to the array of
	 * of_drconf_cell's.
	 */
	entries = FUNC0(*p++);
	old_drmem = (struct of_drconf_cell_v1 *)p;

	p = (__be32 *)pr->prop->value;
	p++;
	new_drmem = (struct of_drconf_cell_v1 *)p;

	for (i = 0; i < entries; i++) {
		if ((FUNC0(old_drmem[i].flags) & DRCONF_MEM_ASSIGNED) &&
		    (!(FUNC0(new_drmem[i].flags) & DRCONF_MEM_ASSIGNED))) {
			rc = FUNC4(
				FUNC1(old_drmem[i].base_addr),
						     memblock_size);
			break;
		} else if ((!(FUNC0(old_drmem[i].flags) &
			    DRCONF_MEM_ASSIGNED)) &&
			    (FUNC0(new_drmem[i].flags) &
			    DRCONF_MEM_ASSIGNED)) {
			rc = FUNC2(FUNC1(old_drmem[i].base_addr),
					  memblock_size);
			rc = (rc < 0) ? -EINVAL : 0;
			break;
		}
	}
	return rc;
}