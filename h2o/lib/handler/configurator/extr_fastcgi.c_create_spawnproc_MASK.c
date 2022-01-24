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
typedef  int /*<<< orphan*/  yoml_t ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  H2O_SOMAXCONN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char* const,char const*) ; 
 int FUNC6 (char* const,char* const*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(h2o_configurator_command_t *cmd, yoml_t *node, const char *dirname, char *const *argv,
                            struct sockaddr_un *sa, struct passwd *pw)
{
    int ret, listen_fd = -1, pipe_fds[2] = {-1, -1};

    /* build socket path */
    sa->sun_family = AF_UNIX;
    ret = FUNC9(sa->sun_path, sizeof(sa->sun_path), "%s/_", dirname);
    if (ret < 0 || ret >= sizeof(sa->sun_path)) {
        FUNC4(cmd, node, "unix socket path too long: %s", dirname);
        goto Error;
    }

    /* create socket */
    if ((listen_fd = FUNC10(AF_UNIX, SOCK_STREAM, 0)) == -1) {
        FUNC4(cmd, node, "socket(2) failed: %s", FUNC11(errno));
        goto Error;
    }
    if (FUNC0(listen_fd, (void *)sa, sizeof(*sa)) != 0) {
        FUNC4(cmd, node, "bind(2) failed: %s", FUNC11(errno));
        goto Error;
    }
    if (FUNC7(listen_fd, H2O_SOMAXCONN) != 0) {
        FUNC4(cmd, node, "listen(2) failed: %s", FUNC11(errno));
        goto Error;
    }
    /* change ownership of socket */
    if (pw != NULL && FUNC1(sa->sun_path, pw->pw_uid, pw->pw_gid) != 0) {
        FUNC4(cmd, node, "chown(2) failed to change ownership of socket:%s:%s", sa->sun_path, FUNC11(errno));
        goto Error;
    }

    /* create pipe which is used to notify the termination of the server */
    if (FUNC8(pipe_fds) != 0) {
        FUNC4(cmd, node, "pipe(2) failed: %s", FUNC11(errno));
        pipe_fds[0] = -1;
        pipe_fds[1] = -1;
        goto Error;
    }
    if (FUNC3(pipe_fds[1], F_SETFD, FD_CLOEXEC) < 0)
        goto Error;

    /* spawn */
    int mapped_fds[] = {listen_fd, 0,   /* listen_fd to 0 */
                        pipe_fds[0], 5, /* pipe_fds[0] to 5 */
                        -1};
    pid_t pid = FUNC6(argv[0], argv, mapped_fds, 0);
    if (pid == -1) {
        FUNC5("[lib/handler/fastcgi.c] failed to launch helper program %s:%s\n", argv[0], FUNC11(errno));
        goto Error;
    }

    FUNC2(listen_fd);
    listen_fd = -1;
    FUNC2(pipe_fds[0]);
    pipe_fds[0] = -1;

    return pipe_fds[1];

Error:
    if (pipe_fds[0] != -1)
        FUNC2(pipe_fds[0]);
    if (pipe_fds[1])
        FUNC2(pipe_fds[1]);
    if (listen_fd != -1)
        FUNC2(listen_fd);
    FUNC12(sa->sun_path);
    return -1;
}