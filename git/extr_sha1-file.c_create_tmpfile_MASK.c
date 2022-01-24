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
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(struct strbuf *tmp, const char *filename)
{
	int fd, dirlen = FUNC1(filename);

	FUNC6(tmp);
	FUNC4(tmp, filename, dirlen);
	FUNC5(tmp, "tmp_obj_XXXXXX");
	fd = FUNC2(tmp->buf, 0444);
	if (fd < 0 && dirlen && errno == ENOENT) {
		/*
		 * Make sure the directory exists; note that the contents
		 * of the buffer are undefined after mkstemp returns an
		 * error, so we have to rewrite the whole buffer from
		 * scratch.
		 */
		FUNC6(tmp);
		FUNC4(tmp, filename, dirlen - 1);
		if (FUNC3(tmp->buf, 0777) && errno != EEXIST)
			return -1;
		if (FUNC0(tmp->buf))
			return -1;

		/* Try again */
		FUNC5(tmp, "/tmp_obj_XXXXXX");
		fd = FUNC2(tmp->buf, 0444);
	}
	return fd;
}