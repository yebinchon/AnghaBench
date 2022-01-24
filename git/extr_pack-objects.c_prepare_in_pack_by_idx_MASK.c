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
struct packing_data {struct packed_git** in_pack_by_idx; int /*<<< orphan*/  repo; } ;
struct packed_git {int index; struct packed_git* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct packed_git**,int) ; 
 unsigned int OE_IN_PACK_BITS ; 
 int /*<<< orphan*/  FUNC1 (struct packed_git**) ; 
 struct packed_git* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct packing_data *pdata)
{
	struct packed_git **mapping, *p;
	int cnt = 0, nr = 1U << OE_IN_PACK_BITS;

	FUNC0(mapping, nr);
	/*
	 * oe_in_pack() on an all-zero'd object_entry
	 * (i.e. in_pack_idx also zero) should return NULL.
	 */
	mapping[cnt++] = NULL;
	for (p = FUNC2(pdata->repo); p; p = p->next, cnt++) {
		if (cnt == nr) {
			FUNC1(mapping);
			return;
		}
		p->index = cnt;
		mapping[cnt] = p;
	}
	pdata->in_pack_by_idx = mapping;
}