#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pushurl; int /*<<< orphan*/ * url; } ;
typedef  TYPE_1__ git_remote ;
struct TYPE_7__ {scalar_t__ klass; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 scalar_t__ GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ ,char*) ; 

void FUNC7(void)
{
	git_remote *remote = NULL;

	FUNC2(FUNC6(&remote, _repo, "empty-remote-url"));

	FUNC0(remote->url == NULL);
	FUNC0(remote->pushurl == NULL);

	FUNC1(FUNC4(remote, GIT_DIRECTION_FETCH, NULL, NULL, NULL));

	FUNC0(FUNC3() != NULL);
	FUNC0(FUNC3()->klass == GIT_ERROR_INVALID);

	FUNC5(remote);
}