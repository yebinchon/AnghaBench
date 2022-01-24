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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_2__ {char* message; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_1__* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int FUNC5(git_repository *repo, int argc, char **argv)
{
	git_config *cfg;
	int error;

	if ((error = FUNC3(&cfg, repo)) < 0) {
		FUNC4("Unable to obtain repository config: %s\n", FUNC2()->message);
		goto out;
	}

	if (argc == 2) {
		error = FUNC0(cfg, argv[1]);
	} else if (argc == 3) {
		error = FUNC1(cfg, argv[1], argv[2]);
	} else {
		FUNC4("USAGE: %s config <KEY> [<VALUE>]\n", argv[0]);
		error = 1;
	}

out:
	return error;
}