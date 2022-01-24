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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct strbuf *temp_filename, const char *pattern)
{
	int fd;
	/*
	 * we let the umask do its job, don't try to be more
	 * restrictive except to remove write permission.
	 */
	int mode = 0444;
	FUNC1(temp_filename, "objects/%s", pattern);
	fd = FUNC0(temp_filename->buf, mode);
	if (0 <= fd)
		return fd;

	/* slow path */
	/* some mkstemp implementations erase temp_filename on failure */
	FUNC1(temp_filename, "objects/%s", pattern);
	FUNC2(temp_filename->buf);
	return FUNC3(temp_filename->buf, mode);
}