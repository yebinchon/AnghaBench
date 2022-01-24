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
typedef  int /*<<< orphan*/  push_spec ;
struct TYPE_4__ {int /*<<< orphan*/  specs; } ;
typedef  TYPE_1__ git_push ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ **,char const*) ; 

int FUNC2(git_push *push, const char *refspec)
{
	push_spec *spec;

	if (FUNC1(push, &spec, refspec) < 0 ||
	    FUNC0(&push->specs, spec) < 0)
		return -1;

	return 0;
}