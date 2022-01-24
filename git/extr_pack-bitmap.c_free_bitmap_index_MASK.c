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
struct TYPE_2__ {struct bitmap_index* hashes; struct bitmap_index* objects; } ;
struct bitmap_index {int /*<<< orphan*/  haves; int /*<<< orphan*/  result; TYPE_1__ ext_index; int /*<<< orphan*/  bitmaps; int /*<<< orphan*/  tags; int /*<<< orphan*/  blobs; int /*<<< orphan*/  trees; int /*<<< orphan*/  commits; int /*<<< orphan*/  map_size; scalar_t__ map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bitmap_index*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5(struct bitmap_index *b)
{
	if (!b)
		return;

	if (b->map)
		FUNC4(b->map, b->map_size);
	FUNC1(b->commits);
	FUNC1(b->trees);
	FUNC1(b->blobs);
	FUNC1(b->tags);
	FUNC3(b->bitmaps);
	FUNC2(b->ext_index.objects);
	FUNC2(b->ext_index.hashes);
	FUNC0(b->result);
	FUNC0(b->haves);
	FUNC2(b);
}