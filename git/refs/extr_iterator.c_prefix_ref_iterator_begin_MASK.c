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
struct ref_iterator {int /*<<< orphan*/  ordered; } ;
struct prefix_ref_iterator {int trim; int /*<<< orphan*/  prefix; struct ref_iterator* iter0; struct ref_iterator base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_iterator*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prefix_ref_iterator_vtable ; 
 struct prefix_ref_iterator* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

struct ref_iterator *FUNC3(struct ref_iterator *iter0,
					       const char *prefix,
					       int trim)
{
	struct prefix_ref_iterator *iter;
	struct ref_iterator *ref_iterator;

	if (!*prefix && !trim)
		return iter0; /* optimization: no need to wrap iterator */

	iter = FUNC1(1, sizeof(*iter));
	ref_iterator = &iter->base;

	FUNC0(ref_iterator, &prefix_ref_iterator_vtable, iter0->ordered);

	iter->iter0 = iter0;
	iter->prefix = FUNC2(prefix);
	iter->trim = trim;

	return ref_iterator;
}