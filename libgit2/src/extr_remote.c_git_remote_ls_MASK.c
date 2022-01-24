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
typedef  int /*<<< orphan*/  git_remote_head ;
struct TYPE_5__ {TYPE_2__* transport; } ;
typedef  TYPE_1__ git_remote ;
struct TYPE_6__ {int (* ls ) (int /*<<< orphan*/  const***,size_t*,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/  const***,size_t*,TYPE_2__*) ; 

int FUNC3(const git_remote_head ***out, size_t *size, git_remote *remote)
{
	FUNC0(remote);

	if (!remote->transport) {
		FUNC1(GIT_ERROR_NET, "this remote has never connected");
		return -1;
	}

	return remote->transport->ls(out, size, remote->transport);
}