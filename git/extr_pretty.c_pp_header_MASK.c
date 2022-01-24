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
struct strbuf {int dummy; } ;
struct pretty_print_context {scalar_t__ fmt; } ;
struct commit {int /*<<< orphan*/  parents; } ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 scalar_t__ CMIT_FMT_FULL ; 
 scalar_t__ CMIT_FMT_FULLER ; 
 scalar_t__ CMIT_FMT_RAW ; 
 int GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (struct pretty_print_context*,struct strbuf*,struct commit const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct pretty_print_context*,char*,struct strbuf*,char const*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,char const**) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static void FUNC9(struct pretty_print_context *pp,
		      const char *encoding,
		      const struct commit *commit,
		      const char **msg_p,
		      struct strbuf *sb)
{
	int parents_shown = 0;

	for (;;) {
		const char *name, *line = *msg_p;
		int linelen = FUNC3(*msg_p);

		if (!linelen)
			return;
		*msg_p += linelen;

		if (linelen == 1)
			/* End of header */
			return;

		if (pp->fmt == CMIT_FMT_RAW) {
			FUNC7(sb, line, linelen);
			continue;
		}

		if (FUNC6(line, "parent ")) {
			if (linelen != the_hash_algo->hexsz + 8)
				FUNC2("bad parent line in commit");
			continue;
		}

		if (!parents_shown) {
			unsigned num = FUNC1(commit->parents);
			/* with enough slop */
			FUNC8(sb, num * (GIT_MAX_HEXSZ + 10) + 20);
			FUNC0(pp, sb, commit);
			parents_shown = 1;
		}

		/*
		 * MEDIUM == DEFAULT shows only author with dates.
		 * FULL shows both authors but not dates.
		 * FULLER shows both authors and dates.
		 */
		if (FUNC5(line, "author ", &name)) {
			FUNC8(sb, linelen + 80);
			FUNC4(pp, "Author", sb, name, encoding);
		}
		if (FUNC5(line, "committer ", &name) &&
		    (pp->fmt == CMIT_FMT_FULL || pp->fmt == CMIT_FMT_FULLER)) {
			FUNC8(sb, linelen + 80);
			FUNC4(pp, "Commit", sb, name, encoding);
		}
	}
}