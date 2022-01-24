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
typedef  int /*<<< orphan*/  uint32_t ;
struct bitmap_index {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_BLOB ; 
 int /*<<< orphan*/  OBJ_COMMIT ; 
 int /*<<< orphan*/  OBJ_TAG ; 
 int /*<<< orphan*/  OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap_index*,int /*<<< orphan*/ ) ; 

void FUNC2(struct bitmap_index *bitmap_git,
			      uint32_t *commits, uint32_t *trees,
			      uint32_t *blobs, uint32_t *tags)
{
	FUNC0(bitmap_git->result);

	if (commits)
		*commits = FUNC1(bitmap_git, OBJ_COMMIT);

	if (trees)
		*trees = FUNC1(bitmap_git, OBJ_TREE);

	if (blobs)
		*blobs = FUNC1(bitmap_git, OBJ_BLOB);

	if (tags)
		*tags = FUNC1(bitmap_git, OBJ_TAG);
}