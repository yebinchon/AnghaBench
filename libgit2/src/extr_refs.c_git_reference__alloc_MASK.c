#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {int /*<<< orphan*/  peel; TYPE_1__ target; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFERENCE_DIRECT ; 
 TYPE_2__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

git_reference *FUNC3(
	const char *name,
	const git_oid *oid,
	const git_oid *peel)
{
	git_reference *ref;

	FUNC1(name && oid);

	ref = FUNC0(name);
	if (!ref)
		return NULL;

	ref->type = GIT_REFERENCE_DIRECT;
	FUNC2(&ref->target.oid, oid);

	if (peel != NULL)
		FUNC2(&ref->peel, peel);

	return ref;
}