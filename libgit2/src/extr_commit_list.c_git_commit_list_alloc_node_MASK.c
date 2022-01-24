#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  commit_pool; } ;
typedef  TYPE_1__ git_revwalk ;
typedef  int /*<<< orphan*/  git_commit_list_node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

git_commit_list_node *FUNC1(git_revwalk *walk)
{
	return (git_commit_list_node *)FUNC0(&walk->commit_pool, 1);
}