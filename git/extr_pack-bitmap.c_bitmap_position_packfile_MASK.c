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
struct object_id {int /*<<< orphan*/  hash; } ;
struct bitmap_index {int /*<<< orphan*/  pack; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct bitmap_index *bitmap_git,
					   const struct object_id *oid)
{
	off_t offset = FUNC0(oid->hash, bitmap_git->pack);
	if (!offset)
		return -1;

	return FUNC1(bitmap_git->pack, offset);
}