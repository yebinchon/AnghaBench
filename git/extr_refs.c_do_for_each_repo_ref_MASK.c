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
struct repository {int dummy; } ;
struct ref_store {int dummy; } ;
struct ref_iterator {int dummy; } ;
typedef  int /*<<< orphan*/  each_repo_ref_fn ;

/* Variables and functions */
 int FUNC0 (struct repository*,struct ref_iterator*,int /*<<< orphan*/ ,void*) ; 
 struct ref_store* FUNC1 (struct repository*) ; 
 struct ref_iterator* FUNC2 (struct ref_store*,char const*,int,int) ; 

__attribute__((used)) static int FUNC3(struct repository *r, const char *prefix,
				each_repo_ref_fn fn, int trim, int flags,
				void *cb_data)
{
	struct ref_iterator *iter;
	struct ref_store *refs = FUNC1(r);

	if (!refs)
		return 0;

	iter = FUNC2(refs, prefix, trim, flags);

	return FUNC0(r, iter, fn, cb_data);
}