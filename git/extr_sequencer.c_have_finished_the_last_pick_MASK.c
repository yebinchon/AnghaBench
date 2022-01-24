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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 () ; 
 scalar_t__ FUNC2 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct strbuf buf = STRBUF_INIT;
	const char *eol;
	const char *todo_path = FUNC1();
	int ret = 0;

	if (FUNC2(&buf, todo_path, 0) < 0) {
		if (errno == ENOENT) {
			return 0;
		} else {
			FUNC0("unable to open '%s'", todo_path);
			return 0;
		}
	}
	/* If there is only one line then we are done */
	eol = FUNC4(buf.buf, '\n');
	if (!eol || !eol[1])
		ret = 1;

	FUNC3(&buf);

	return ret;
}