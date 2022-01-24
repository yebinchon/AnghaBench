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
struct TYPE_4__ {int uninteresting; } ;
typedef  TYPE_1__ git_revwalk__push_options ;
typedef  int /*<<< orphan*/  git_revwalk ;

/* Variables and functions */
 TYPE_1__ GIT_REVWALK__PUSH_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 

int FUNC2(git_revwalk *walk, const char *refname)
{
	git_revwalk__push_options opts = GIT_REVWALK__PUSH_OPTIONS_INIT;
	FUNC0(walk && refname);
	opts.uninteresting = 1;
	return FUNC1(walk, refname, &opts);
}