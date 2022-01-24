#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct parse_state {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct parse_state*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct parse_state*) ; 

int FUNC3(git_repository *repo, int argc, char *argv[])
{
	struct parse_state ps = {0};

	FUNC1(&ps, argc, argv);

	FUNC0(FUNC2(repo, &ps), "Parsing", NULL);

	return 0;
}