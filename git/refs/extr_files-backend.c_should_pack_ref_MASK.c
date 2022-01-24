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

/* Variables and functions */
 unsigned int PACK_REFS_ALL ; 
 unsigned int REF_ISSYMREF ; 
 scalar_t__ REF_TYPE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct object_id const*,unsigned int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *refname,
			   const struct object_id *oid, unsigned int ref_flags,
			   unsigned int pack_flags)
{
	/* Do not pack per-worktree refs: */
	if (FUNC1(refname) != REF_TYPE_NORMAL)
		return 0;

	/* Do not pack non-tags unless PACK_REFS_ALL is set: */
	if (!(pack_flags & PACK_REFS_ALL) && !FUNC2(refname, "refs/tags/"))
		return 0;

	/* Do not pack symbolic refs: */
	if (ref_flags & REF_ISSYMREF)
		return 0;

	/* Do not pack broken refs: */
	if (!FUNC0(refname, oid, ref_flags))
		return 0;

	return 1;
}