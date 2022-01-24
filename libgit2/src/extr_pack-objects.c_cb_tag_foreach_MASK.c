#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tagged; } ;
typedef  TYPE_1__ git_pobject ;
struct TYPE_5__ {int /*<<< orphan*/  object_ix; } ;
typedef  TYPE_2__ git_packbuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const char *name, git_oid *oid, void *data)
{
	git_packbuilder *pb = data;
	git_pobject *po;

	FUNC0(name);

	if ((po = FUNC1(pb->object_ix, oid)) == NULL)
		return 0;

	po->tagged = 1;

	/* TODO: peel objects */

	return 0;
}