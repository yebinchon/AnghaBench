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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_describe_result ;
struct TYPE_5__ {char* ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_6__ {int /*<<< orphan*/  format_options; int /*<<< orphan*/  describe_options; } ;
typedef  TYPE_2__ describe_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(git_repository *repo, describe_options *opts, const char *rev)
{
	git_object *commit;
	git_describe_result *describe_result;
	git_buf buf = { 0 };

	if (rev) {
		FUNC0(FUNC4(&commit, repo, rev),
			"Failed to lookup rev", rev);

		FUNC0(FUNC1(&describe_result, commit, &opts->describe_options),
			"Failed to describe rev", rev);
	}
	else
		FUNC0(FUNC3(&describe_result, repo, &opts->describe_options),
			"Failed to describe workdir", NULL);

	FUNC0(FUNC2(&buf, describe_result, &opts->format_options),
			"Failed to format describe rev", rev);

	FUNC5("%s\n", buf.ptr);
}