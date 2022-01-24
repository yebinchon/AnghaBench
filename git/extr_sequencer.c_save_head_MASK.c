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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct lock_file {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct lock_file*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct lock_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const char *head)
{
	struct lock_file head_lock = LOCK_INIT;
	struct strbuf buf = STRBUF_INIT;
	int fd;
	ssize_t written;

	fd = FUNC5(&head_lock, FUNC4(), 0);
	if (fd < 0)
		return FUNC3(FUNC0("could not lock HEAD"));
	FUNC7(&buf, "%s\n", head);
	written = FUNC9(fd, buf.buf, buf.len);
	FUNC8(&buf);
	if (written < 0) {
		FUNC3(FUNC0("could not write to '%s'"), FUNC4());
		FUNC6(&head_lock);
		return -1;
	}
	if (FUNC1(&head_lock) < 0)
		return FUNC2(FUNC0("failed to finalize '%s'"), FUNC4());
	return 0;
}