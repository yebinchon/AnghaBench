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
struct lock_file {int dummy; } ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct lock_file*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (struct lock_file*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lock_file*) ; 
 scalar_t__ FUNC6 (int,char*,int) ; 
 scalar_t__ FUNC7 (int,void const*,size_t) ; 

__attribute__((used)) static int FUNC8(const void *buf, size_t len, const char *filename,
			 int append_eol)
{
	struct lock_file msg_file = LOCK_INIT;

	int msg_fd = FUNC4(&msg_file, filename, 0);
	if (msg_fd < 0)
		return FUNC3(FUNC0("could not lock '%s'"), filename);
	if (FUNC7(msg_fd, buf, len) < 0) {
		FUNC3(FUNC0("could not write to '%s'"), filename);
		FUNC5(&msg_file);
		return -1;
	}
	if (append_eol && FUNC6(msg_fd, "\n", 1) < 0) {
		FUNC3(FUNC0("could not write eol to '%s'"), filename);
		FUNC5(&msg_file);
		return -1;
	}
	if (FUNC1(&msg_file) < 0)
		return FUNC2(FUNC0("failed to finalize '%s'"), filename);

	return 0;
}