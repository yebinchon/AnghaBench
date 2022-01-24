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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct bitmapped_commit {int /*<<< orphan*/  bitmap; } ;
struct bitmap {int dummy; } ;
typedef  scalar_t__ khiter_t ;
struct TYPE_4__ {int /*<<< orphan*/  bitmaps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bitmapped_commit* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__ writer ; 

__attribute__((used)) static int
FUNC7(struct bitmap *base, struct commit *commit)
{
	khiter_t hash_pos;
	uint32_t bitmap_pos = FUNC3(&commit->object.oid);

	if (FUNC0(base, bitmap_pos))
		return 0;

	hash_pos = FUNC5(writer.bitmaps, commit->object.oid);
	if (hash_pos < FUNC4(writer.bitmaps)) {
		struct bitmapped_commit *bc = FUNC6(writer.bitmaps, hash_pos);
		FUNC1(base, bc->bitmap);
		return 0;
	}

	FUNC2(base, bitmap_pos);
	return 1;
}