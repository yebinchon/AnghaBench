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
struct object_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * positions; } ;
struct bitmap_index {TYPE_2__* pack; TYPE_1__ ext_index; } ;
typedef  scalar_t__ khiter_t ;
typedef  int /*<<< orphan*/  kh_oid_pos_t ;
struct TYPE_4__ {int num_objects; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct object_id const) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(struct bitmap_index *bitmap_git,
					   const struct object_id *oid)
{
	kh_oid_pos_t *positions = bitmap_git->ext_index.positions;
	khiter_t pos = FUNC1(positions, *oid);

	if (pos < FUNC0(positions)) {
		int bitmap_pos = FUNC2(positions, pos);
		return bitmap_pos + bitmap_git->pack->num_objects;
	}

	return -1;
}