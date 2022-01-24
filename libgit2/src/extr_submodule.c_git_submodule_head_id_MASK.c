#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  const head_oid; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_SUBMODULE_STATUS__HEAD_OID_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

const git_oid *FUNC1(git_submodule *submodule)
{
	FUNC0(submodule);

	if (submodule->flags & GIT_SUBMODULE_STATUS__HEAD_OID_VALID)
		return &submodule->head_oid;
	else
		return NULL;
}