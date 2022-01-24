#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* name; struct TYPE_6__* pushurl; struct TYPE_6__* url; int /*<<< orphan*/  push; int /*<<< orphan*/  passive_refspecs; int /*<<< orphan*/  active_refspecs; int /*<<< orphan*/  refspecs; int /*<<< orphan*/  refs; TYPE_2__* transport; } ;
typedef  TYPE_1__ git_remote ;
struct TYPE_7__ {int /*<<< orphan*/  (* free ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(git_remote *remote)
{
	if (remote == NULL)
		return;

	if (remote->transport != NULL) {
		FUNC3(remote);

		remote->transport->free(remote->transport);
		remote->transport = NULL;
	}

	FUNC4(&remote->refs);

	FUNC0(&remote->refspecs);
	FUNC4(&remote->refspecs);

	FUNC0(&remote->active_refspecs);
	FUNC4(&remote->active_refspecs);

	FUNC0(&remote->passive_refspecs);
	FUNC4(&remote->passive_refspecs);

	FUNC2(remote->push);
	FUNC1(remote->url);
	FUNC1(remote->pushurl);
	FUNC1(remote->name);
	FUNC1(remote);
}