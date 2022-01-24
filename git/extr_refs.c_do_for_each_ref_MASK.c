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
struct ref_store {int dummy; } ;
struct ref_iterator {int dummy; } ;
struct do_for_each_ref_help {void* member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  each_ref_fn ;

/* Variables and functions */
 int /*<<< orphan*/  do_for_each_ref_helper ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ref_iterator*,int /*<<< orphan*/ ,struct do_for_each_ref_help*) ; 
 struct ref_iterator* FUNC1 (struct ref_store*,char const*,int,int) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC2(struct ref_store *refs, const char *prefix,
			   each_ref_fn fn, int trim, int flags, void *cb_data)
{
	struct ref_iterator *iter;
	struct do_for_each_ref_help hp = { fn, cb_data };

	if (!refs)
		return 0;

	iter = FUNC1(refs, prefix, trim, flags);

	return FUNC0(the_repository, iter,
					do_for_each_ref_helper, &hp);
}