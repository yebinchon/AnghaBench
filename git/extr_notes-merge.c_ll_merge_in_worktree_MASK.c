#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct notes_merge_pair {int /*<<< orphan*/  obj; int /*<<< orphan*/  remote; int /*<<< orphan*/  local; int /*<<< orphan*/  base; } ;
struct notes_merge_options {TYPE_1__* repo; int /*<<< orphan*/  remote_ref; int /*<<< orphan*/  local_ref; } ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ mmfile_t ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ mmbuffer_t ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct notes_merge_options *o,
				struct notes_merge_pair *p)
{
	mmbuffer_t result_buf;
	mmfile_t base, local, remote;
	int status;

	FUNC4(&base, &p->base);
	FUNC4(&local, &p->local);
	FUNC4(&remote, &p->remote);

	status = FUNC2(&result_buf, FUNC3(&p->obj), &base, NULL,
			  &local, o->local_ref, &remote, o->remote_ref,
			  o->repo->index, NULL);

	FUNC1(base.ptr);
	FUNC1(local.ptr);
	FUNC1(remote.ptr);

	if ((status < 0) || !result_buf.ptr)
		FUNC0("Failed to execute internal merge");

	FUNC5(&p->obj, result_buf.ptr, result_buf.size);
	FUNC1(result_buf.ptr);

	return status;
}