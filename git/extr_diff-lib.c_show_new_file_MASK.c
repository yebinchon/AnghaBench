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
struct rev_info {int /*<<< orphan*/  diffopt; } ;
struct object_id {int dummy; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,char*,struct cache_entry const*,struct object_id const*,int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (struct cache_entry const*,struct object_id const**,unsigned int*,int,int,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 

__attribute__((used)) static void FUNC3(struct rev_info *revs,
			  const struct cache_entry *new_file,
			  int cached, int match_missing)
{
	const struct object_id *oid;
	unsigned int mode;
	unsigned dirty_submodule = 0;

	/*
	 * New file in the index: it might actually be different in
	 * the working tree.
	 */
	if (FUNC1(new_file, &oid, &mode, cached, match_missing,
	    &dirty_submodule, &revs->diffopt) < 0)
		return;

	FUNC0(revs, "+", new_file, oid, !FUNC2(oid), mode, dirty_submodule);
}