#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct object {int dummy; } ;
struct TYPE_2__ {int parsed; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 struct commit* FUNC0 (struct repository*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct tree*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,char const*,struct object*) ; 

__attribute__((used)) static struct commit *FUNC3(struct repository *repo,
					  struct tree *tree,
					  const char *comment)
{
	struct commit *commit = FUNC0(repo);

	FUNC2(commit, comment, (struct object *)commit);
	FUNC1(commit, tree);
	commit->object.parsed = 1;
	return commit;
}