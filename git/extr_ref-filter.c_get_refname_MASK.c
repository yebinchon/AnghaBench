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
struct TYPE_2__ {int /*<<< orphan*/  refname; } ;
struct used_atom {TYPE_1__ u; } ;
struct ref_array_item {int kind; int /*<<< orphan*/  refname; } ;

/* Variables and functions */
 int FILTER_REFS_DETACHED_HEAD ; 
 char const* FUNC0 () ; 
 char const* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2(struct used_atom *atom, struct ref_array_item *ref)
{
	if (ref->kind & FILTER_REFS_DETACHED_HEAD)
		return FUNC0();
	return FUNC1(&atom->u.refname, ref->refname);
}