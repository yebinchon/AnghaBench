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
struct log_state {int max_parents; int limit; int skip; int min_parents; int show_diff; int show_log_size; int /*<<< orphan*/  repodir; int /*<<< orphan*/  grep; int /*<<< orphan*/  committer; int /*<<< orphan*/  author; int /*<<< orphan*/  revisions; int /*<<< orphan*/  sorting; } ;
struct log_options {int max_parents; int limit; int skip; int min_parents; int show_diff; int show_log_size; int /*<<< orphan*/  repodir; int /*<<< orphan*/  grep; int /*<<< orphan*/  committer; int /*<<< orphan*/  author; int /*<<< orphan*/  revisions; int /*<<< orphan*/  sorting; } ;
struct args_info {int pos; } ;

/* Variables and functions */
 struct args_info ARGS_INFO_INIT ; 
 int /*<<< orphan*/  GIT_SORT_REVERSE ; 
 int /*<<< orphan*/  GIT_SORT_TIME ; 
 int /*<<< orphan*/  GIT_SORT_TOPOLOGICAL ; 
 int /*<<< orphan*/  FUNC0 (struct log_state*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*,struct args_info*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct args_info*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct log_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct log_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static int FUNC8(
	struct log_state *s, struct log_options *opt, int argc, char **argv)
{
	struct args_info args = ARGS_INFO_INIT;

	FUNC4(s, 0, sizeof(*s));
	s->sorting = GIT_SORT_TIME;

	FUNC4(opt, 0, sizeof(*opt));
	opt->max_parents = -1;
	opt->limit = -1;

	for (args.pos = 1; args.pos < argc; ++args.pos) {
		const char *a = argv[args.pos];

		if (a[0] != '-') {
			if (!FUNC0(s, a))
				s->revisions++;
			else
				/** Try failed revision parse as filename. */
				break;
		} else if (!FUNC6(a, "--")) {
			++args.pos;
			break;
		}
		else if (!FUNC6(a, "--date-order"))
			FUNC5(s, GIT_SORT_TIME);
		else if (!FUNC6(a, "--topo-order"))
			FUNC5(s, GIT_SORT_TOPOLOGICAL);
		else if (!FUNC6(a, "--reverse"))
			FUNC5(s, GIT_SORT_REVERSE);
		else if (FUNC3(&opt->author, &args, "--author"))
			/** Found valid --author */;
		else if (FUNC3(&opt->committer, &args, "--committer"))
			/** Found valid --committer */;
		else if (FUNC3(&opt->grep, &args, "--grep"))
			/** Found valid --grep */;
		else if (FUNC3(&s->repodir, &args, "--git-dir"))
			/** Found git-dir. */;
		else if (FUNC2(&opt->skip, &args, "--skip", 0))
			/** Found valid --skip. */;
		else if (FUNC2(&opt->limit, &args, "--max-count", 0))
			/** Found valid --max-count. */;
		else if (a[1] >= '0' && a[1] <= '9')
			FUNC1(&opt->limit, a + 1, 0);
		else if (FUNC2(&opt->limit, &args, "-n", 0))
			/** Found valid -n. */;
		else if (!FUNC6(a, "--merges"))
			opt->min_parents = 2;
		else if (!FUNC6(a, "--no-merges"))
			opt->max_parents = 1;
		else if (!FUNC6(a, "--no-min-parents"))
			opt->min_parents = 0;
		else if (!FUNC6(a, "--no-max-parents"))
			opt->max_parents = -1;
		else if (FUNC2(&opt->max_parents, &args, "--max-parents=", 1))
			/** Found valid --max-parents. */;
		else if (FUNC2(&opt->min_parents, &args, "--min-parents=", 0))
			/** Found valid --min_parents. */;
		else if (!FUNC6(a, "-p") || !FUNC6(a, "-u") || !FUNC6(a, "--patch"))
			opt->show_diff = 1;
		else if (!FUNC6(a, "--log-size"))
			opt->show_log_size = 1;
		else
			FUNC7("Unsupported argument", a);
	}

	return args.pos;
}