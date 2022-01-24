#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  free; int /*<<< orphan*/  credtype; } ;
typedef  TYPE_1__ git_cred_default ;
typedef  TYPE_1__ git_cred ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CREDTYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  default_free ; 
 TYPE_1__* FUNC2 (int,int) ; 

int FUNC3(git_cred **cred)
{
	git_cred_default *c;

	FUNC1(cred);

	c = FUNC2(1, sizeof(git_cred_default));
	FUNC0(c);

	c->credtype = GIT_CREDTYPE_DEFAULT;
	c->free = default_free;

	*cred = c;
	return 0;
}