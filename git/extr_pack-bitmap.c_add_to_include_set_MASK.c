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
struct stored_bitmap {int dummy; } ;
struct object_id {int dummy; } ;
struct include_data {scalar_t__ base; scalar_t__ seen; } ;
struct bitmap_index {int /*<<< orphan*/  bitmaps; } ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct object_id const) ; 
 struct stored_bitmap* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct stored_bitmap*) ; 

__attribute__((used)) static int FUNC7(struct bitmap_index *bitmap_git,
			      struct include_data *data,
			      const struct object_id *oid,
			      int bitmap_pos)
{
	khiter_t hash_pos;

	if (data->seen && FUNC0(data->seen, bitmap_pos))
		return 0;

	if (FUNC0(data->base, bitmap_pos))
		return 0;

	hash_pos = FUNC4(bitmap_git->bitmaps, *oid);
	if (hash_pos < FUNC3(bitmap_git->bitmaps)) {
		struct stored_bitmap *st = FUNC5(bitmap_git->bitmaps, hash_pos);
		FUNC1(data->base, FUNC6(st));
		return 0;
	}

	FUNC2(data->base, bitmap_pos);
	return 1;
}