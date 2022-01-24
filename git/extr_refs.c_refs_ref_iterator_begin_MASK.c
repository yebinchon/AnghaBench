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
struct ref_store {TYPE_1__* be; } ;
struct ref_iterator {int /*<<< orphan*/  ordered; } ;
struct TYPE_2__ {struct ref_iterator* (* iterator_begin ) (struct ref_store*,char const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DO_FOR_EACH_INCLUDE_BROKEN ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct ref_iterator* FUNC2 (struct ref_iterator*,char*,int) ; 
 scalar_t__ ref_paranoia ; 
 struct ref_iterator* FUNC3 (struct ref_store*,char const*,int) ; 

struct ref_iterator *FUNC4(
		struct ref_store *refs,
		const char *prefix, int trim, int flags)
{
	struct ref_iterator *iter;

	if (ref_paranoia < 0)
		ref_paranoia = FUNC1("GIT_REF_PARANOIA", 0);
	if (ref_paranoia)
		flags |= DO_FOR_EACH_INCLUDE_BROKEN;

	iter = refs->be->iterator_begin(refs, prefix, flags);

	/*
	 * `iterator_begin()` already takes care of prefix, but we
	 * might need to do some trimming:
	 */
	if (trim)
		iter = FUNC2(iter, "", trim);

	/* Sanity check for subclasses: */
	if (!iter->ordered)
		FUNC0("reference iterator is not ordered");

	return iter;
}