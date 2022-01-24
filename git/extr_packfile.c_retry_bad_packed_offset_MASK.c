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
struct revindex_entry {int /*<<< orphan*/  nr; } ;
struct repository {int dummy; } ;
struct packed_git {int dummy; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int OBJ_BAD ; 
 int OBJ_NONE ; 
 struct revindex_entry* FUNC0 (struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,struct packed_git*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct repository*,struct object_id*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct repository *r,
				   struct packed_git *p,
				   off_t obj_offset)
{
	int type;
	struct revindex_entry *revidx;
	struct object_id oid;
	revidx = FUNC0(p, obj_offset);
	if (!revidx)
		return OBJ_BAD;
	FUNC2(&oid, p, revidx->nr);
	FUNC1(p, oid.hash);
	type = FUNC3(r, &oid, NULL);
	if (type <= OBJ_NONE)
		return OBJ_BAD;
	return type;
}