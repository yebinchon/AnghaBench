#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_blame__origin ;
struct TYPE_8__ {scalar_t__ suspect; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_blame__entry ;
typedef  int /*<<< orphan*/  git_blame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,size_t,size_t,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
		git_blame *blame,
		git_blame__entry *e,
		size_t tlno,
		size_t plno,
		size_t same,
		git_blame__origin *parent)
{
	git_blame__entry split[3] = {{0}};

	FUNC2(split, e, tlno, plno, same, parent);
	if (split[1].suspect)
		if (FUNC1(blame, split, e) < 0)
			return -1;
	FUNC0(split);

	return 0;
}