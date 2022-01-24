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
typedef  int /*<<< orphan*/  substring_t ;
struct binderfs_mount_opts {int max; int /*<<< orphan*/  stats_mode; } ;

/* Variables and functions */
 int BINDERFS_MAX_MINOR ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int MAX_OPT_ARGS ; 
#define  Opt_max 129 
#define  Opt_stats_mode 128 
 int /*<<< orphan*/  STATS_GLOBAL ; 
 int /*<<< orphan*/  STATS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC8(char *data,
				     struct binderfs_mount_opts *opts)
{
	char *p, *stats;
	opts->max = BINDERFS_MAX_MINOR;
	opts->stats_mode = STATS_NONE;

	while ((p = FUNC7(&data, ",")) != NULL) {
		substring_t args[MAX_OPT_ARGS];
		int token;
		int max_devices;

		if (!*p)
			continue;

		token = FUNC4(p, tokens, args);
		switch (token) {
		case Opt_max:
			if (FUNC2(&args[0], &max_devices) ||
			    (max_devices < 0 ||
			     (max_devices > BINDERFS_MAX_MINOR)))
				return -EINVAL;

			opts->max = max_devices;
			break;
		case Opt_stats_mode:
			if (!FUNC0(CAP_SYS_ADMIN))
				return -EINVAL;

			stats = FUNC3(&args[0]);
			if (!stats)
				return -ENOMEM;

			if (FUNC6(stats, "global") != 0) {
				FUNC1(stats);
				return -EINVAL;
			}

			opts->stats_mode = STATS_GLOBAL;
			FUNC1(stats);
			break;
		default:
			FUNC5("Invalid mount options\n");
			return -EINVAL;
		}
	}

	return 0;
}