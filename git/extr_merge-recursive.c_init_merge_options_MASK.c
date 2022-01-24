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
struct repository {int dummy; } ;
struct merge_options {int detect_renames; int rename_limit; int verbosity; int buffer_output; scalar_t__ renormalize; int /*<<< orphan*/  obuf; int /*<<< orphan*/  detect_directory_renames; struct repository* repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  MERGE_DIRECTORY_RENAMES_CONFLICT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct merge_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

void FUNC5(struct merge_options *opt,
			struct repository *repo)
{
	const char *merge_verbosity;
	FUNC1(opt, 0, sizeof(struct merge_options));

	opt->repo = repo;

	opt->detect_renames = -1;
	opt->detect_directory_renames = MERGE_DIRECTORY_RENAMES_CONFLICT;
	opt->rename_limit = -1;

	opt->verbosity = 2;
	opt->buffer_output = 1;
	FUNC3(&opt->obuf, 0);

	opt->renormalize = 0;

	FUNC2(opt);
	merge_verbosity = FUNC0("GIT_MERGE_VERBOSITY");
	if (merge_verbosity)
		opt->verbosity = FUNC4(merge_verbosity, NULL, 10);
	if (opt->verbosity >= 5)
		opt->buffer_output = 0;
}