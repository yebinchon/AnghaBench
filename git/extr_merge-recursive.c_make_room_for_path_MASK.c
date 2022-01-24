#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct merge_options {TYPE_2__* priv; } ;
struct TYPE_6__ {int nr; TYPE_1__* items; } ;
struct TYPE_5__ {TYPE_3__ df_conflict_file_set; } ;
struct TYPE_4__ {char* string; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int SCLD_EXISTS ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (struct merge_options*,char const*,char const*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*,int,char*,char const*) ; 
 int FUNC3 (char const*) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct merge_options*,char const*) ; 

__attribute__((used)) static int FUNC9(struct merge_options *opt, const char *path)
{
	int status, i;
	const char *msg = FUNC0("failed to create path '%s'%s");

	/* Unlink any D/F conflict files that are in the way */
	for (i = 0; i < opt->priv->df_conflict_file_set.nr; i++) {
		const char *df_path = opt->priv->df_conflict_file_set.items[i].string;
		size_t pathlen = FUNC4(path);
		size_t df_pathlen = FUNC4(df_path);
		if (df_pathlen < pathlen &&
		    path[df_pathlen] == '/' &&
		    FUNC5(path, df_path, df_pathlen) == 0) {
			FUNC2(opt, 3,
			       FUNC0("Removing %s to make room for subdirectory\n"),
			       df_path);
			FUNC6(df_path);
			FUNC7(&opt->priv->df_conflict_file_set,
							 i, 0);
			break;
		}
	}

	/* Make sure leading directories are created */
	status = FUNC3(path);
	if (status) {
		if (status == SCLD_EXISTS)
			/* something else exists */
			return FUNC1(opt, msg, path, FUNC0(": perhaps a D/F conflict?"));
		return FUNC1(opt, msg, path, "");
	}

	/*
	 * Do not unlink a file in the work tree if we are not
	 * tracking it.
	 */
	if (FUNC8(opt, path))
		return FUNC1(opt, FUNC0("refusing to lose untracked file at '%s'"),
			   path);

	/* Successful unlink is good.. */
	if (!FUNC6(path))
		return 0;
	/* .. and so is no existing file */
	if (errno == ENOENT)
		return 0;
	/* .. but not some other error (who really cares what?) */
	return FUNC1(opt, msg, path, FUNC0(": perhaps a D/F conflict?"));
}