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
struct object_id {int dummy; } ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  island_marks ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct object_id const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(const struct object_id *trg_oid, const struct object_id *src_oid)
{
	khiter_t trg_pos, src_pos;

	/* If we aren't using islands, assume everything goes together. */
	if (!island_marks)
		return 1;

	/*
	 * If we don't have a bitmap for the target, we can delta it
	 * against anything -- it's not an important object
	 */
	trg_pos = FUNC2(island_marks, *trg_oid);
	if (trg_pos >= FUNC1(island_marks))
		return 1;

	/*
	 * if the source (our delta base) doesn't have a bitmap,
	 * we don't want to base any deltas on it!
	 */
	src_pos = FUNC2(island_marks, *src_oid);
	if (src_pos >= FUNC1(island_marks))
		return 0;

	return FUNC0(FUNC3(island_marks, trg_pos),
				FUNC3(island_marks, src_pos));
}