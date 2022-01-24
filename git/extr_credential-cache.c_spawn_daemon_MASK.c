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
struct child_process {char const** argv; int no_stdin; int out; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int FUNC4 (int,char*,int) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 

__attribute__((used)) static void FUNC6(const char *socket)
{
	struct child_process daemon = CHILD_PROCESS_INIT;
	const char *argv[] = { NULL, NULL, NULL };
	char buf[128];
	int r;

	argv[0] = "git-credential-cache--daemon";
	argv[1] = socket;
	daemon.argv = argv;
	daemon.no_stdin = 1;
	daemon.out = -1;

	if (FUNC5(&daemon))
		FUNC2("unable to start cache daemon");
	r = FUNC4(daemon.out, buf, sizeof(buf));
	if (r < 0)
		FUNC2("unable to read result code from cache daemon");
	if (r != 3 || FUNC3(buf, "ok\n", 3))
		FUNC1("cache daemon did not start: %.*s", r, buf);
	FUNC0(daemon.out);
}