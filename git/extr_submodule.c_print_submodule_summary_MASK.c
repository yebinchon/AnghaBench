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
struct rev_info {int /*<<< orphan*/  date_mode; } ;
struct repository {int dummy; } ;
struct pretty_print_context {int /*<<< orphan*/  output_encoding; int /*<<< orphan*/  date_mode; int /*<<< orphan*/  member_0; } ;
struct diff_options {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int SYMMETRIC_LEFT ; 
 int /*<<< orphan*/  FUNC0 (struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct commit* FUNC3 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct commit*,char const*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct repository *r, struct rev_info *rev, struct diff_options *o)
{
	static const char format[] = "  %m %s";
	struct strbuf sb = STRBUF_INIT;
	struct commit *commit;

	while ((commit = FUNC3(rev))) {
		struct pretty_print_context ctx = {0};
		ctx.date_mode = rev->date_mode;
		ctx.output_encoding = FUNC2();
		FUNC7(&sb, 0);
		FUNC4(r, commit, format, &sb,
				      &ctx);
		FUNC5(&sb, '\n');
		if (commit->object.flags & SYMMETRIC_LEFT)
			FUNC1(o, sb.buf);
		else
			FUNC0(o, sb.buf);
	}
	FUNC6(&sb);
}