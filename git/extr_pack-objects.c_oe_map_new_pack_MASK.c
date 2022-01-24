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
struct packing_data {size_t nr_objects; int /*<<< orphan*/  in_pack_by_idx; scalar_t__ objects; int /*<<< orphan*/ * in_pack; int /*<<< orphan*/  nr_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct packing_data*,scalar_t__) ; 

void FUNC3(struct packing_data *pack)
{
	uint32_t i;

	FUNC1(pack->in_pack, pack->nr_alloc);

	for (i = 0; i < pack->nr_objects; i++)
		pack->in_pack[i] = FUNC2(pack, pack->objects + i);

	FUNC0(pack->in_pack_by_idx);
}