#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
struct hostinfo {TYPE_2__ tcp_port; TYPE_1__ hostname; } ;
struct daemon_service {int /*<<< orphan*/  name; } ;
struct child_process {int use_shell; char const** argv; int no_stdin; int no_stderr; int out; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  EACCES ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  access_hook ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostinfo*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 scalar_t__ FUNC9 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC13(struct daemon_service *service, const char *dir,
			   const char *path, struct hostinfo *hi)
{
	struct child_process child = CHILD_PROCESS_INIT;
	struct strbuf buf = STRBUF_INIT;
	const char *argv[8];
	const char **arg = argv;
	char *eol;
	int seen_errors = 0;

	*arg++ = access_hook;
	*arg++ = service->name;
	*arg++ = path;
	*arg++ = hi->hostname.buf;
	*arg++ = FUNC3(hi);
	*arg++ = FUNC4(hi);
	*arg++ = hi->tcp_port.buf;
	*arg = NULL;

	child.use_shell = 1;
	child.argv = argv;
	child.no_stdin = 1;
	child.no_stderr = 1;
	child.out = -1;
	if (FUNC6(&child)) {
		FUNC5("daemon access hook '%s' failed to start",
			 access_hook);
		goto error_return;
	}
	if (FUNC9(&buf, child.out, 0) < 0) {
		FUNC5("failed to read from pipe to daemon access hook '%s'",
			 access_hook);
		FUNC11(&buf);
		seen_errors = 1;
	}
	if (FUNC0(child.out) < 0) {
		FUNC5("failed to close pipe to daemon access hook '%s'",
			 access_hook);
		seen_errors = 1;
	}
	if (FUNC2(&child))
		seen_errors = 1;

	if (!seen_errors) {
		FUNC10(&buf);
		return 0;
	}

error_return:
	FUNC8(&buf);
	if (!buf.len)
		FUNC7(&buf, "service rejected");
	eol = FUNC12(buf.buf, '\n');
	if (eol)
		*eol = '\0';
	errno = EACCES;
	FUNC1(dir, buf.buf);
	FUNC10(&buf);
	return -1;
}