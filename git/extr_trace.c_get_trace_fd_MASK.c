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
struct trace_key {int initialized; int fd; int need_close; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int STDERR_FILENO ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const) ; 
 int FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct trace_key*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,char const*,...) ; 

__attribute__((used)) static int FUNC11(struct trace_key *key)
{
	const char *trace;

	/* don't open twice */
	if (key->initialized)
		return key->fd;

	trace = FUNC1(key->key);

	if (!trace || !FUNC6(trace, "") ||
	    !FUNC6(trace, "0") || !FUNC5(trace, "false"))
		key->fd = 0;
	else if (!FUNC6(trace, "1") || !FUNC5(trace, "true"))
		key->fd = STDERR_FILENO;
	else if (FUNC8(trace) == 1 && FUNC3(*trace))
		key->fd = FUNC0(trace);
	else if (FUNC2(trace)) {
		int fd = FUNC4(trace, O_WRONLY | O_APPEND | O_CREAT, 0666);
		if (fd == -1) {
			FUNC10("could not open '%s' for tracing: %s",
				trace, FUNC7(errno));
			FUNC9(key);
		} else {
			key->fd = fd;
			key->need_close = 1;
		}
	} else {
		FUNC10("unknown trace value for '%s': %s\n"
			"         If you want to trace into a file, then please set %s\n"
			"         to an absolute pathname (starting with /)",
			key->key, trace, key->key);
		FUNC9(key);
	}

	key->initialized = 1;
	return key->fd;
}