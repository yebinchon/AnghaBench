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
struct string_list {int dummy; } ;
struct strbuf {scalar_t__* buf; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 scalar_t__ comment_line_char ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(const char *fname, struct string_list *lines)
{
	struct strbuf line = STRBUF_INIT;
	FILE *f = FUNC3(FUNC4("%s", fname), "r");

	if (!f) {
		if (errno == ENOENT)
			return -1;
		FUNC1("Could not open file %s for reading",
			  FUNC4("%s", fname));
	}
	while (!FUNC5(&line, f)) {
		if (line.len && line.buf[0] == comment_line_char)
			continue;
		FUNC7(&line);
		if (!line.len)
			continue;
		FUNC0(&line);
		FUNC8(lines, line.buf);
	}
	FUNC2(f);
	FUNC6(&line);
	return 0;
}