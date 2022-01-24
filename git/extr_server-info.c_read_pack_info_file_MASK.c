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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,char const**) ; 
 scalar_t__ FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(const char *infofile)
{
	FILE *fp;
	struct strbuf line = STRBUF_INIT;
	int old_cnt = 0;
	int stale = 1;

	fp = FUNC2(infofile, "r");
	if (!fp)
		return 1; /* nonexistent is not an error. */

	while (FUNC5(&line, fp) != EOF) {
		const char *arg;

		if (!line.len)
			continue;

		if (FUNC4(line.buf, "P ", &arg)) {
			/* P name */
			if (FUNC3(arg, old_cnt++))
				goto out_stale;
		} else if (line.buf[0] == 'D') {
			/* we used to emit D but that was misguided. */
			goto out_stale;
		} else if (line.buf[0] == 'T') {
			/* we used to emit T but nobody uses it. */
			goto out_stale;
		} else {
			FUNC0("unrecognized: %s", line.buf);
		}
	}
	stale = 0;

 out_stale:
	FUNC6(&line);
	FUNC1(fp);
	return stale;
}