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
typedef  int /*<<< orphan*/  transport_smart ;
struct TYPE_5__ {int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  action; } ;
struct TYPE_6__ {TYPE_1__ parent; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_2__ ssh_subtransport ;
typedef  void git_transport ;
typedef  int /*<<< orphan*/  git_smart_subtransport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  _ssh_action ; 
 int /*<<< orphan*/  _ssh_close ; 
 int /*<<< orphan*/  _ssh_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(
	git_smart_subtransport **out, git_transport *owner, void *param)
{
#ifdef GIT_SSH
	ssh_subtransport *t;

	assert(out);

	GIT_UNUSED(param);

	t = git__calloc(sizeof(ssh_subtransport), 1);
	GIT_ERROR_CHECK_ALLOC(t);

	t->owner = (transport_smart *)owner;
	t->parent.action = _ssh_action;
	t->parent.close = _ssh_close;
	t->parent.free = _ssh_free;

	*out = (git_smart_subtransport *) t;
	return 0;
#else
	FUNC1(owner);
	FUNC1(param);

	FUNC2(out);
	*out = NULL;

	FUNC4(GIT_ERROR_INVALID, "cannot create SSH transport. Library was built without SSH support");
	return -1;
#endif
}