#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct merge_options {TYPE_2__* priv; TYPE_1__* repo; } ;
struct TYPE_4__ {int /*<<< orphan*/  call_depth; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*,int,int /*<<< orphan*/ ,char const*,char const*,...) ; 
 char* FUNC3 (struct merge_options*,char const*,char const*) ; 
 scalar_t__ FUNC4 (struct merge_options*,char const*) ; 

__attribute__((used)) static char *FUNC5(struct merge_options *opt,
				    const char *path,
				    const char *branch1,
				    const char *branch2)
{
	char *new_path = NULL;
	if (FUNC1(opt->repo->index, path, !opt->priv->call_depth, 0)) {
		new_path = FUNC3(opt, path, branch1);
		FUNC2(opt, 1, FUNC0("%s is a directory in %s adding "
			       "as %s instead"),
		       path, branch2, new_path);
	} else if (FUNC4(opt, path)) {
		new_path = FUNC3(opt, path, branch1);
		FUNC2(opt, 1, FUNC0("Refusing to lose untracked file"
			       " at %s; adding as %s instead"),
		       path, new_path);
	}

	return new_path;
}