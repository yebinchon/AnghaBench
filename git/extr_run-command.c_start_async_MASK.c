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
struct async {int in; int out; scalar_t__ pid; int proc_in; int proc_out; int /*<<< orphan*/  tid; int /*<<< orphan*/  data; int /*<<< orphan*/  (* proc ) (int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  async_die_counter ; 
 int /*<<< orphan*/  async_die_is_recursing ; 
 int /*<<< orphan*/  async_key ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  die_async ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  main_thread ; 
 int main_thread_set ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int*) ; 
 int process_is_async ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct async*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  run_thread ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int,int /*<<< orphan*/ ) ; 

int FUNC19(struct async *async)
{
	int need_in, need_out;
	int fdin[2], fdout[2];
	int proc_in, proc_out;

	need_in = async->in < 0;
	if (need_in) {
		if (FUNC10(fdin) < 0) {
			if (async->out > 0)
				FUNC1(async->out);
			return FUNC4("cannot create pipe");
		}
		async->in = fdin[1];
	}

	need_out = async->out < 0;
	if (need_out) {
		if (FUNC10(fdout) < 0) {
			if (need_in)
				FUNC2(fdin);
			else if (async->in)
				FUNC1(async->in);
			return FUNC4("cannot create pipe");
		}
		async->out = fdout[0];
	}

	if (need_in)
		proc_in = fdin[0];
	else if (async->in)
		proc_in = async->in;
	else
		proc_in = -1;

	if (need_out)
		proc_out = fdout[1];
	else if (async->out)
		proc_out = async->out;
	else
		proc_out = -1;

#ifdef NO_PTHREADS
	/* Flush stdio before fork() to avoid cloning buffers */
	fflush(NULL);

	async->pid = fork();
	if (async->pid < 0) {
		error_errno("fork (async) failed");
		goto error;
	}
	if (!async->pid) {
		if (need_in)
			close(fdin[1]);
		if (need_out)
			close(fdout[0]);
		git_atexit_clear();
		process_is_async = 1;
		exit(!!async->proc(proc_in, proc_out, async->data));
	}

	mark_child_for_cleanup(async->pid, NULL);

	if (need_in)
		close(fdin[0]);
	else if (async->in)
		close(async->in);

	if (need_out)
		close(fdout[1]);
	else if (async->out)
		close(async->out);
#else
	if (!main_thread_set) {
		/*
		 * We assume that the first time that start_async is called
		 * it is from the main thread.
		 */
		main_thread_set = 1;
		main_thread = FUNC13();
		FUNC12(&async_key, NULL);
		FUNC12(&async_die_counter, NULL);
		FUNC16(die_async);
		FUNC15(async_die_is_recursing);
	}

	if (proc_in >= 0)
		FUNC14(proc_in);
	if (proc_out >= 0)
		FUNC14(proc_out);
	async->proc_in = proc_in;
	async->proc_out = proc_out;
	{
		int err = FUNC11(&async->tid, NULL, run_thread, async);
		if (err) {
			FUNC3(FUNC0("cannot create async thread: %s"), FUNC17(err));
			goto error;
		}
	}
#endif
	return 0;

error:
	if (need_in)
		FUNC2(fdin);
	else if (async->in)
		FUNC1(async->in);

	if (need_out)
		FUNC2(fdout);
	else if (async->out)
		FUNC1(async->out);
	return -1;
}