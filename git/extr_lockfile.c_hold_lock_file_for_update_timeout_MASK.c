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
struct lock_file {int dummy; } ;

/* Variables and functions */
 int LOCK_DIE_ON_ERROR ; 
 int LOCK_REPORT_ON_ERROR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lock_file*,char const*,int,long) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,struct strbuf*) ; 

int FUNC5(struct lock_file *lk, const char *path,
				      int flags, long timeout_ms)
{
	int fd = FUNC1(lk, path, flags, timeout_ms);
	if (fd < 0) {
		if (flags & LOCK_DIE_ON_ERROR)
			FUNC3(path, errno);
		if (flags & LOCK_REPORT_ON_ERROR) {
			struct strbuf buf = STRBUF_INIT;
			FUNC4(path, errno, &buf);
			FUNC0("%s", buf.buf);
			FUNC2(&buf);
		}
	}
	return fd;
}