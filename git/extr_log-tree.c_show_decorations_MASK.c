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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; int /*<<< orphan*/  use_color; } ;
struct rev_info {TYPE_1__ diffopt; int /*<<< orphan*/  show_decorations; scalar_t__ sources; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** FUNC3 (scalar_t__,struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

void FUNC5(struct rev_info *opt, struct commit *commit)
{
	struct strbuf sb = STRBUF_INIT;

	if (opt->sources) {
		char **slot = FUNC3(opt->sources, commit);

		if (slot && *slot)
			FUNC1(opt->diffopt.file, "\t%s", *slot);
	}
	if (!opt->show_decorations)
		return;
	FUNC0(&sb, commit, opt->diffopt.use_color);
	FUNC2(sb.buf, opt->diffopt.file);
	FUNC4(&sb);
}