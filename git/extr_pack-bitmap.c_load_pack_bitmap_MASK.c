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
struct TYPE_2__ {int /*<<< orphan*/  positions; } ;
struct bitmap_index {scalar_t__ map_size; int /*<<< orphan*/ * map; void* tags; void* blobs; void* trees; void* commits; int /*<<< orphan*/  pack; TYPE_1__ ext_index; int /*<<< orphan*/  bitmaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct bitmap_index*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC6 (struct bitmap_index*) ; 

__attribute__((used)) static int FUNC7(struct bitmap_index *bitmap_git)
{
	FUNC0(bitmap_git->map);

	bitmap_git->bitmaps = FUNC1();
	bitmap_git->ext_index.positions = FUNC2();
	if (FUNC4(bitmap_git->pack))
		goto failed;

	if (!(bitmap_git->commits = FUNC6(bitmap_git)) ||
		!(bitmap_git->trees = FUNC6(bitmap_git)) ||
		!(bitmap_git->blobs = FUNC6(bitmap_git)) ||
		!(bitmap_git->tags = FUNC6(bitmap_git)))
		goto failed;

	if (FUNC3(bitmap_git) < 0)
		goto failed;

	return 0;

failed:
	FUNC5(bitmap_git->map, bitmap_git->map_size);
	bitmap_git->map = NULL;
	bitmap_git->map_size = 0;
	return -1;
}