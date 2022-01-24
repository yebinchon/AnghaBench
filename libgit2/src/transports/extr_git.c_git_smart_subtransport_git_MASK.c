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
typedef  int /*<<< orphan*/  git_transport ;
struct TYPE_5__ {int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  action; } ;
struct TYPE_6__ {TYPE_1__ parent; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_2__ git_subtransport ;
typedef  int /*<<< orphan*/  git_smart_subtransport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  _git_action ; 
 int /*<<< orphan*/  _git_close ; 
 int /*<<< orphan*/  _git_free ; 
 TYPE_2__* FUNC2 (int,int) ; 

int FUNC3(git_smart_subtransport **out, git_transport *owner, void *param)
{
	git_subtransport *t;

	FUNC1(param);

	if (!out)
		return -1;

	t = FUNC2(1, sizeof(git_subtransport));
	FUNC0(t);

	t->owner = owner;
	t->parent.action = _git_action;
	t->parent.close = _git_close;
	t->parent.free = _git_free;

	*out = (git_smart_subtransport *) t;
	return 0;
}