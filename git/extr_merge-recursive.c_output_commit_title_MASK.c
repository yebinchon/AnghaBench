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
struct merge_remote_desc {int /*<<< orphan*/  name; } ;
struct merge_options {int /*<<< orphan*/  obuf; TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {int call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*) ; 
 char* FUNC3 (struct commit*,int /*<<< orphan*/ *) ; 
 struct merge_remote_desc* FUNC4 (struct commit*) ; 
 scalar_t__ FUNC5 (struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct commit*,char const*) ; 

__attribute__((used)) static void FUNC12(struct merge_options *opt, struct commit *commit)
{
	struct merge_remote_desc *desc;

	FUNC8(&opt->obuf, ' ', opt->priv->call_depth * 2);
	desc = FUNC4(commit);
	if (desc)
		FUNC9(&opt->obuf, "virtual %s\n", desc->name);
	else {
		FUNC6(&opt->obuf, &commit->object.oid,
					 DEFAULT_ABBREV);
		FUNC7(&opt->obuf, ' ');
		if (FUNC5(commit) != 0)
			FUNC10(&opt->obuf, FUNC0("(bad commit)\n"));
		else {
			const char *title;
			const char *msg = FUNC3(commit, NULL);
			int len = FUNC1(msg, &title);
			if (len)
				FUNC9(&opt->obuf, "%.*s\n", len, title);
			FUNC11(commit, msg);
		}
	}
	FUNC2(opt);
}