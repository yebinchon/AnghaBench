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
struct TYPE_3__ {scalar_t__ argv; } ;
struct TYPE_4__ {char** argv; } ;
struct child_process {char** argv; int in; int out; int err; int pid; scalar_t__ clean_on_exit; scalar_t__ silent_exec_failure; scalar_t__ dir; scalar_t__ env; scalar_t__ use_shell; scalar_t__ git_cmd; scalar_t__ stdout_to_stderr; scalar_t__ no_stdout; scalar_t__ no_stderr; scalar_t__ no_stdin; TYPE_1__ env_array; TYPE_2__ args; } ;
struct child_err {int dummy; } ;
struct atfork_state {int /*<<< orphan*/  old; } ;
struct argv_array {int /*<<< orphan*/ * argv; } ;
typedef  int /*<<< orphan*/  cerr ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  CHILD_ERR_CHDIR ; 
 int /*<<< orphan*/  CHILD_ERR_ENOENT ; 
 int /*<<< orphan*/  CHILD_ERR_ERRNO ; 
 int /*<<< orphan*/  CHILD_ERR_SIGPROCMASK ; 
 int /*<<< orphan*/  CHILD_ERR_SILENT ; 
 int ENOENT ; 
 int ENOEXEC ; 
 int NSIG ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct atfork_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct atfork_state*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  child_die_fn ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct child_process*,struct child_err*) ; 
 int /*<<< orphan*/  child_error_fn ; 
 int child_notifier ; 
 int /*<<< orphan*/  FUNC10 (struct child_process*) ; 
 int /*<<< orphan*/  child_warn_fn ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char* const*,char* const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char**) ; 
 int /*<<< orphan*/  FUNC21 (int,struct child_process*) ; 
 int FUNC22 (char*,char**,char**,scalar_t__,int,int,int) ; 
 int FUNC23 (char*,int) ; 
 scalar_t__ FUNC24 (int*) ; 
 char** FUNC25 (scalar_t__) ; 
 scalar_t__ FUNC26 (struct argv_array*,struct child_process*) ; 
 char** FUNC27 (struct argv_array*,char**) ; 
 char** FUNC28 (struct argv_array*,char**) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int,scalar_t__) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (struct child_process*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC38 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC39 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC40 (int,struct child_err*,int) ; 

int FUNC41(struct child_process *cmd)
{
	int need_in, need_out, need_err;
	int fdin[2], fdout[2], fderr[2];
	int failed_errno;
	char *str;

	if (!cmd->argv)
		cmd->argv = cmd->args.argv;
	if (!cmd->env)
		cmd->env = cmd->env_array.argv;

	/*
	 * In case of errors we must keep the promise to close FDs
	 * that have been passed in via ->in and ->out.
	 */

	need_in = !cmd->no_stdin && cmd->in < 0;
	if (need_in) {
		if (FUNC24(fdin) < 0) {
			failed_errno = errno;
			if (cmd->out > 0)
				FUNC11(cmd->out);
			str = "standard input";
			goto fail_pipe;
		}
		cmd->in = fdin[1];
	}

	need_out = !cmd->no_stdout
		&& !cmd->stdout_to_stderr
		&& cmd->out < 0;
	if (need_out) {
		if (FUNC24(fdout) < 0) {
			failed_errno = errno;
			if (need_in)
				FUNC12(fdin);
			else if (cmd->in)
				FUNC11(cmd->in);
			str = "standard output";
			goto fail_pipe;
		}
		cmd->out = fdout[0];
	}

	need_err = !cmd->no_stderr && cmd->err < 0;
	if (need_err) {
		if (FUNC24(fderr) < 0) {
			failed_errno = errno;
			if (need_in)
				FUNC12(fdin);
			else if (cmd->in)
				FUNC11(cmd->in);
			if (need_out)
				FUNC12(fdout);
			else if (cmd->out)
				FUNC11(cmd->out);
			str = "standard error";
fail_pipe:
			FUNC15("cannot create %s pipe for %s: %s",
				str, cmd->argv[0], FUNC35(failed_errno));
			FUNC10(cmd);
			errno = failed_errno;
			return -1;
		}
		cmd->err = fderr[0];
	}

	FUNC37(cmd);
	FUNC38(cmd);

	FUNC18(NULL);

#ifndef GIT_WINDOWS_NATIVE
{
	int notify_pipe[2];
	int null_fd = -1;
	char **childenv;
	struct argv_array argv = ARGV_ARRAY_INIT;
	struct child_err cerr;
	struct atfork_state as;

	if (FUNC26(&argv, cmd) < 0) {
		failed_errno = errno;
		cmd->pid = -1;
		if (!cmd->silent_exec_failure)
			FUNC16("cannot run %s", cmd->argv[0]);
		goto end_of_spawn;
	}

	if (FUNC24(notify_pipe))
		notify_pipe[0] = notify_pipe[1] = -1;

	if (cmd->no_stdin || cmd->no_stdout || cmd->no_stderr) {
		null_fd = FUNC23("/dev/null", O_RDWR | O_CLOEXEC);
		if (null_fd < 0)
			FUNC13(FUNC0("open /dev/null failed"));
		FUNC29(null_fd);
	}

	childenv = FUNC25(cmd->env);
	FUNC3(&as);

	/*
	 * NOTE: In order to prevent deadlocking when using threads special
	 * care should be taken with the function calls made in between the
	 * fork() and exec() calls.  No calls should be made to functions which
	 * require acquiring a lock (e.g. malloc) as the lock could have been
	 * held by another thread at the time of forking, causing the lock to
	 * never be released in the child process.  This means only
	 * Async-Signal-Safe functions are permitted in the child.
	 */
	cmd->pid = FUNC19();
	failed_errno = errno;
	if (!cmd->pid) {
		int sig;
		/*
		 * Ensure the default die/error/warn routines do not get
		 * called, they can take stdio locks and malloc.
		 */
		FUNC30(child_die_fn);
		FUNC31(child_error_fn);
		FUNC32(child_warn_fn);

		FUNC11(notify_pipe[0]);
		FUNC29(notify_pipe[1]);
		child_notifier = notify_pipe[1];

		if (cmd->no_stdin)
			FUNC8(null_fd, 0);
		else if (need_in) {
			FUNC8(fdin[0], 0);
			FUNC6(fdin);
		} else if (cmd->in) {
			FUNC8(cmd->in, 0);
			FUNC5(cmd->in);
		}

		if (cmd->no_stderr)
			FUNC8(null_fd, 2);
		else if (need_err) {
			FUNC8(fderr[1], 2);
			FUNC6(fderr);
		} else if (cmd->err > 1) {
			FUNC8(cmd->err, 2);
			FUNC5(cmd->err);
		}

		if (cmd->no_stdout)
			FUNC8(null_fd, 1);
		else if (cmd->stdout_to_stderr)
			FUNC8(2, 1);
		else if (need_out) {
			FUNC8(fdout[1], 1);
			FUNC6(fdout);
		} else if (cmd->out > 1) {
			FUNC8(cmd->out, 1);
			FUNC5(cmd->out);
		}

		if (cmd->dir && FUNC4(cmd->dir))
			FUNC7(CHILD_ERR_CHDIR);

		/*
		 * restore default signal handlers here, in case
		 * we catch a signal right before execve below
		 */
		for (sig = 1; sig < NSIG; sig++) {
			/* ignored signals get reset to SIG_DFL on execve */
			if (FUNC33(sig, SIG_DFL) == SIG_IGN)
				FUNC33(sig, SIG_IGN);
		}

		if (FUNC34(SIG_SETMASK, &as.old, NULL) != 0)
			FUNC7(CHILD_ERR_SIGPROCMASK);

		/*
		 * Attempt to exec using the command and arguments starting at
		 * argv.argv[1].  argv.argv[0] contains SHELL_PATH which will
		 * be used in the event exec failed with ENOEXEC at which point
		 * we will try to interpret the command using 'sh'.
		 */
		FUNC17(argv.argv[1], (char *const *) argv.argv + 1,
		       (char *const *) childenv);
		if (errno == ENOEXEC)
			FUNC17(argv.argv[0], (char *const *) argv.argv,
			       (char *const *) childenv);

		if (errno == ENOENT) {
			if (cmd->silent_exec_failure)
				FUNC7(CHILD_ERR_SILENT);
			FUNC7(CHILD_ERR_ENOENT);
		} else {
			FUNC7(CHILD_ERR_ERRNO);
		}
	}
	FUNC2(&as);
	if (cmd->pid < 0)
		FUNC16("cannot fork() for %s", cmd->argv[0]);
	else if (cmd->clean_on_exit)
		FUNC21(cmd->pid, cmd);

	/*
	 * Wait for child's exec. If the exec succeeds (or if fork()
	 * failed), EOF is seen immediately by the parent. Otherwise, the
	 * child process sends a child_err struct.
	 * Note that use of this infrastructure is completely advisory,
	 * therefore, we keep error checks minimal.
	 */
	FUNC11(notify_pipe[1]);
	if (FUNC40(notify_pipe[0], &cerr, sizeof(cerr)) == sizeof(cerr)) {
		/*
		 * At this point we know that fork() succeeded, but exec()
		 * failed. Errors have been reported to our stderr.
		 */
		FUNC39(cmd->pid, cmd->argv[0], 0);
		FUNC9(cmd, &cerr);
		failed_errno = errno;
		cmd->pid = -1;
	}
	FUNC11(notify_pipe[0]);

	if (null_fd >= 0)
		FUNC11(null_fd);
	FUNC1(&argv);
	FUNC20(childenv);
}
end_of_spawn:

#else
{
	int fhin = 0, fhout = 1, fherr = 2;
	const char **sargv = cmd->argv;
	struct argv_array nargv = ARGV_ARRAY_INIT;

	if (cmd->no_stdin)
		fhin = open("/dev/null", O_RDWR);
	else if (need_in)
		fhin = dup(fdin[0]);
	else if (cmd->in)
		fhin = dup(cmd->in);

	if (cmd->no_stderr)
		fherr = open("/dev/null", O_RDWR);
	else if (need_err)
		fherr = dup(fderr[1]);
	else if (cmd->err > 2)
		fherr = dup(cmd->err);

	if (cmd->no_stdout)
		fhout = open("/dev/null", O_RDWR);
	else if (cmd->stdout_to_stderr)
		fhout = dup(fherr);
	else if (need_out)
		fhout = dup(fdout[1]);
	else if (cmd->out > 1)
		fhout = dup(cmd->out);

	if (cmd->git_cmd)
		cmd->argv = prepare_git_cmd(&nargv, cmd->argv);
	else if (cmd->use_shell)
		cmd->argv = prepare_shell_cmd(&nargv, cmd->argv);

	cmd->pid = mingw_spawnvpe(cmd->argv[0], cmd->argv, (char**) cmd->env,
			cmd->dir, fhin, fhout, fherr);
	failed_errno = errno;
	if (cmd->pid < 0 && (!cmd->silent_exec_failure || errno != ENOENT))
		error_errno("cannot spawn %s", cmd->argv[0]);
	if (cmd->clean_on_exit && cmd->pid >= 0)
		mark_child_for_cleanup(cmd->pid, cmd);

	argv_array_clear(&nargv);
	cmd->argv = sargv;
	if (fhin != 0)
		close(fhin);
	if (fhout != 1)
		close(fhout);
	if (fherr != 2)
		close(fherr);
}
#endif

	if (cmd->pid < 0) {
		FUNC36(cmd, -1);

		if (need_in)
			FUNC12(fdin);
		else if (cmd->in)
			FUNC11(cmd->in);
		if (need_out)
			FUNC12(fdout);
		else if (cmd->out)
			FUNC11(cmd->out);
		if (need_err)
			FUNC12(fderr);
		else if (cmd->err)
			FUNC11(cmd->err);
		FUNC10(cmd);
		errno = failed_errno;
		return -1;
	}

	if (need_in)
		FUNC11(fdin[0]);
	else if (cmd->in)
		FUNC11(cmd->in);

	if (need_out)
		FUNC11(fdout[1]);
	else if (cmd->out)
		FUNC11(cmd->out);

	if (need_err)
		FUNC11(fderr[1]);
	else if (cmd->err)
		FUNC11(cmd->err);

	return 0;
}