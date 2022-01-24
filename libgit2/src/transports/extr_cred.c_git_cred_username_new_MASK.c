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
struct TYPE_5__ {int /*<<< orphan*/  free; int /*<<< orphan*/  credtype; } ;
struct TYPE_6__ {int /*<<< orphan*/  username; TYPE_1__ parent; } ;
typedef  TYPE_2__ git_cred_username ;
typedef  int /*<<< orphan*/  git_cred ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CREDTYPE_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  username_free ; 

int FUNC6(git_cred **cred, const char *username)
{
	git_cred_username *c;
	size_t len, allocsize;

	FUNC2(cred);

	len = FUNC5(username);

	FUNC1(&allocsize, sizeof(git_cred_username), len);
	FUNC1(&allocsize, allocsize, 1);
	c = FUNC3(allocsize);
	FUNC0(c);

	c->parent.credtype = GIT_CREDTYPE_USERNAME;
	c->parent.free = username_free;
	FUNC4(c->username, username, len + 1);

	*cred = (git_cred *) c;
	return 0;
}