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
struct refspec_item {char* dst; int /*<<< orphan*/  force; scalar_t__ matching; scalar_t__ pattern; } ;
struct ref {char const* name; int /*<<< orphan*/  force; struct ref* peer_ref; int /*<<< orphan*/  new_oid; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref* FUNC1 (struct ref*) ; 
 int FUNC2 (char const*,struct ref*,struct ref**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,struct ref*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ref* FUNC8 (char const*,struct ref***) ; 
 scalar_t__ FUNC9 (struct ref*,struct refspec_item*,struct ref**,int*) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static int FUNC13(struct ref *src, struct ref *dst,
			  struct ref ***dst_tail,
			  struct refspec_item *rs)
{
	struct ref *matched_src, *matched_dst;
	int allocated_src;

	const char *dst_value = rs->dst;
	char *dst_guess;

	if (rs->pattern || rs->matching)
		return 0;

	matched_src = matched_dst = NULL;
	if (FUNC9(src, rs, &matched_src, &allocated_src) < 0)
		return -1;

	if (!dst_value) {
		int flag;

		dst_value = FUNC10(matched_src->name,
					       RESOLVE_REF_READING,
					       NULL, &flag);
		if (!dst_value ||
		    ((flag & REF_ISSYMREF) &&
		     !FUNC12(dst_value, "refs/heads/")))
			FUNC3(FUNC0("%s cannot be resolved to branch"),
			    matched_src->name);
	}

	switch (FUNC2(dst_value, dst, &matched_dst)) {
	case 1:
		break;
	case 0:
		if (FUNC12(dst_value, "refs/")) {
			matched_dst = FUNC8(dst_value, dst_tail);
		} else if (FUNC7(&matched_src->new_oid)) {
			FUNC4(FUNC0("unable to delete '%s': remote ref does not exist"),
			      dst_value);
		} else if ((dst_guess = FUNC6(dst_value, matched_src))) {
			matched_dst = FUNC8(dst_guess, dst_tail);
			FUNC5(dst_guess);
		} else {
			FUNC11(dst_value,
							     matched_src->name);
		}
		break;
	default:
		matched_dst = NULL;
		FUNC4(FUNC0("dst refspec %s matches more than one"),
		      dst_value);
		break;
	}
	if (!matched_dst)
		return -1;
	if (matched_dst->peer_ref)
		return FUNC4(FUNC0("dst ref %s receives from more than one src"),
			     matched_dst->name);
	else {
		matched_dst->peer_ref = allocated_src ?
					matched_src :
					FUNC1(matched_src);
		matched_dst->force = rs->force;
	}
	return 0;
}