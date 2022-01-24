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
struct dog_data {int stdin_fd; int stdout_fd; int* close_me; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pre_exec ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct dog_data*,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int FUNC8(int *in_fd_ret, int *out_fd_ret, char *sock)
{
	struct dog_data data;
	int in_fds[2], out_fds[2], pid, n, err;
	char pid_buf[sizeof("nnnnnnn\0")], c;
	char *pid_args[] = { "/usr/bin/uml_watchdog", "-pid", pid_buf, NULL };
	char *mconsole_args[] = { "/usr/bin/uml_watchdog", "-mconsole", NULL,
				  NULL };
	char **args = NULL;

	err = FUNC3(in_fds, 1, 0);
	if (err < 0) {
		FUNC4("harddog_open - os_pipe failed, err = %d\n", -err);
		goto out;
	}

	err = FUNC3(out_fds, 1, 0);
	if (err < 0) {
		FUNC4("harddog_open - os_pipe failed, err = %d\n", -err);
		goto out_close_in;
	}

	data.stdin_fd = out_fds[0];
	data.stdout_fd = in_fds[1];
	data.close_me[0] = out_fds[1];
	data.close_me[1] = in_fds[0];

	if (sock != NULL) {
		mconsole_args[2] = sock;
		args = mconsole_args;
	}
	else {
		/* XXX The os_getpid() is not SMP correct */
		FUNC7(pid_buf, "%d", FUNC2());
		args = pid_args;
	}

	pid = FUNC6(pre_exec, &data, args);

	FUNC0(out_fds[0]);
	FUNC0(in_fds[1]);

	if (pid < 0) {
		err = -pid;
		FUNC4("harddog_open - run_helper failed, errno = %d\n", -err);
		goto out_close_out;
	}

	n = FUNC5(in_fds[0], &c, sizeof(c));
	if (n == 0) {
		FUNC4("harddog_open - EOF on watchdog pipe\n");
		FUNC1(pid);
		err = -EIO;
		goto out_close_out;
	}
	else if (n < 0) {
		FUNC4("harddog_open - read of watchdog pipe failed, "
		       "err = %d\n", errno);
		FUNC1(pid);
		err = n;
		goto out_close_out;
	}
	*in_fd_ret = in_fds[0];
	*out_fd_ret = out_fds[1];
	return 0;

 out_close_in:
	FUNC0(in_fds[0]);
	FUNC0(in_fds[1]);
 out_close_out:
	FUNC0(out_fds[0]);
	FUNC0(out_fds[1]);
 out:
	return err;
}