#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct testgroup_t {char* prefix; } ;
struct testcase_t {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  info ;
typedef  enum outcome { ____Placeholder_outcome } outcome ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_6__ {int cb; int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int FAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int INFINITE ; 
 int /*<<< orphan*/  LONGEST_TEST_NAME ; 
 scalar_t__ MAGIC_EXITCODE ; 
 int OK ; 
 int SKIP ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* commandname ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  in_tinytest_main ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int opt_timeout ; 
 scalar_t__ opt_verbosity ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct testcase_t const*) ; 
 char* verbosity_flag ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int,char*,int) ; 

__attribute__((used)) static enum outcome
FUNC19(const struct testgroup_t *group,
		     const struct testcase_t *testcase)
{
#ifdef _WIN32
	/* Fork? On Win32?  How primitive!  We'll do what the smart kids do:
	   we'll invoke our own exe (whose name we recall from the command
	   line) with a command line that tells it to run just the test we
	   want, and this time without forking.

	   (No, threads aren't an option.  The whole point of forking is to
	   share no state between tests.)
	 */
	int ok;
	char buffer[LONGEST_TEST_NAME+256];
	STARTUPINFOA si;
	PROCESS_INFORMATION info;
	DWORD ret;

	if (!in_tinytest_main) {
		printf("\nERROR.  On Windows, testcase_run_forked_ must be"
		       " called from within tinytest_main.\n");
		abort();
	}
	if (opt_verbosity>0)
		printf("[forking] ");

	snprintf(buffer, sizeof(buffer), "%s --RUNNING-FORKED %s --timeout 0 %s%s",
		 commandname, verbosity_flag, group->prefix, testcase->name);

	memset(&si, 0, sizeof(si));
	memset(&info, 0, sizeof(info));
	si.cb = sizeof(si);

	ok = CreateProcessA(commandname, buffer, NULL, NULL, 0,
			   0, NULL, NULL, &si, &info);
	if (!ok) {
		printf("CreateProcess failed!\n");
		return FAIL;
	}
	ret = WaitForSingleObject(info.hProcess,
		(opt_timeout ? opt_timeout * 1000U : INFINITE));

	if (ret == WAIT_OBJECT_0) {
		GetExitCodeProcess(info.hProcess, &ret);
	} else if (ret == WAIT_TIMEOUT) {
		printf("timeout\n");
	} else {
		printf("Wait failed\n");
	}
	CloseHandle(info.hProcess);
	CloseHandle(info.hThread);
	if (ret == 0)
		return OK;
	else if (ret == MAGIC_EXITCODE)
		return SKIP;
	else
		return FAIL;
#else
	int outcome_pipe[2];
	pid_t pid;
	(void)group;

	if (FUNC11(outcome_pipe))
		FUNC10("opening pipe");

	if (opt_verbosity>0)
		FUNC12("[forking] ");
	pid = FUNC8();
#ifdef FORK_BREAKS_GCOV
	vproc_transaction_begin(0);
#endif
	if (!pid) {
		/* child. */
		int test_r, write_r;
		char b[1];
		FUNC6(outcome_pipe[0]);
		test_r = FUNC15(testcase);
		FUNC5(0<=(int)test_r && (int)test_r<=2);
		b[0] = "NYS"[test_r];
		write_r = (int)FUNC18(outcome_pipe[1], b, 1);
		if (write_r != 1) {
			FUNC10("write outcome to pipe");
			FUNC7(1);
		}
		FUNC7(0);
		return FAIL; /* unreachable */
	} else {
		/* parent */
		int status, r;
		char b[1];
		/* Close this now, so that if the other side closes it,
		 * our read fails. */
		FUNC6(outcome_pipe[1]);
		r = (int)FUNC13(outcome_pipe[0], b, 1);
		if (r == 0) {
			FUNC12("[Lost connection!] ");
			return 0;
		} else if (r != 1) {
			FUNC10("read outcome from pipe");
		}
		FUNC17(pid, &status, 0);
		FUNC6(outcome_pipe[0]);
		return b[0]=='Y' ? OK : (b[0]=='S' ? SKIP : FAIL);
	}
#endif
}