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
struct TYPE_4__ {scalar_t__ size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_DIRECTION_FETCH ; 
 int GIT_DIRECTION_PUSH ; 
 int GIT_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (void*,char*) ; 

__attribute__((used)) static int FUNC3(git_buf *url_resolved, const char *url, int direction, void *payload)
{
	FUNC0(FUNC2(url, "git://github.com/libgit2/libgit2") == 0);
	FUNC0(FUNC2(payload, "payload") == 0);
	FUNC0(url_resolved->size == 0);
	
	if (direction == GIT_DIRECTION_PUSH)
		FUNC1(url_resolved, "pushresolve");
	if (direction == GIT_DIRECTION_FETCH)
		FUNC1(url_resolved, "fetchresolve");

	return GIT_OK;
}