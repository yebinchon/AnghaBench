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
struct strbuf {int len; char* buf; } ;
struct rev_info {int dummy; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  REVARG_CANNOT_BE_FILENAME ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*,struct rev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct argv_array*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int warn_on_object_refname_ambiguity ; 

__attribute__((used)) static void FUNC6(struct rev_info *revs,
				      struct argv_array *prune)
{
	struct strbuf sb;
	int seen_dashdash = 0;
	int save_warning;

	save_warning = warn_on_object_refname_ambiguity;
	warn_on_object_refname_ambiguity = 0;

	FUNC4(&sb, 1000);
	while (FUNC3(&sb, stdin) != EOF) {
		int len = sb.len;
		if (!len)
			break;
		if (sb.buf[0] == '-') {
			if (len == 2 && sb.buf[1] == '-') {
				seen_dashdash = 1;
				break;
			}
			FUNC0("options not supported in --stdin mode");
		}
		if (FUNC1(sb.buf, revs, 0,
					REVARG_CANNOT_BE_FILENAME))
			FUNC0("bad revision '%s'", sb.buf);
	}
	if (seen_dashdash)
		FUNC2(&sb, prune);

	FUNC5(&sb);
	warn_on_object_refname_ambiguity = save_warning;
}