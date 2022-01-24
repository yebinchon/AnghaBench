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
struct bitmap_index {int /*<<< orphan*/  haves; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bitmap_index*,struct object_id const*) ; 

int FUNC2(struct bitmap_index *bitmap_git,
				    const struct object_id *oid)
{
	int pos;

	if (!bitmap_git)
		return 0; /* no bitmap loaded */
	if (!bitmap_git->haves)
		return 0; /* walk had no "haves" */

	pos = FUNC1(bitmap_git, oid);
	if (pos < 0)
		return 0;

	return FUNC0(bitmap_git->haves, pos);
}