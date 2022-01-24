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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf**) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 struct strbuf** FUNC7 (struct strbuf*,char,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static void FUNC9(struct strbuf *line)
{
	struct strbuf **split;
	int i;

	if (FUNC1(line->buf, "exec ") ||
	    FUNC1(line->buf, "x ") ||
	    FUNC1(line->buf, "label ") ||
	    FUNC1(line->buf, "l "))
		return;

	split = FUNC7(line, ' ', 3);
	if (split[0] && split[1]) {
		struct object_id oid;

		/*
		 * strbuf_split_max left a space. Trim it and re-add
		 * it after abbreviation.
		 */
		FUNC8(split[1]);
		if (!FUNC0(split[1]->buf, &oid)) {
			FUNC6(split[1]);
			FUNC2(split[1], &oid,
						 DEFAULT_ABBREV);
			FUNC4(split[1], ' ');
			FUNC6(line);
			for (i = 0; split[i]; i++)
				FUNC3(line, split[i]);
		}
	}
	FUNC5(split);
}