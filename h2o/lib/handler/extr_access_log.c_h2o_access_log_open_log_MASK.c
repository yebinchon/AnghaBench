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
struct stat {int st_mode; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int O_APPEND ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int S_IFMT ; 
 int S_IFSOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char const*,int,int) ; 
 scalar_t__ FUNC8 (int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*) ; 

int FUNC14(const char *path)
{
    int fd;

    if (path[0] == '|') {
        int pipefds[2];
        pid_t pid;
        char *argv[4] = {"/bin/sh", "-c", (char *)(path + 1), NULL};
        /* create pipe */
        if (FUNC8(pipefds) != 0) {
            FUNC4("pipe failed");
            return -1;
        }
        if (FUNC2(pipefds[1], F_SETFD, FD_CLOEXEC) == -1) {
            FUNC4("failed to set FD_CLOEXEC on pipefds[1]");
            return -1;
        }
        /* spawn the logger */
        int mapped_fds[] = {pipefds[0], 0, /* map pipefds[0] to stdin */
                            -1};
        if ((pid = FUNC5(argv[0], argv, mapped_fds, 0)) == -1) {
            FUNC3("failed to open logger: %s:%s\n", path + 1, FUNC12(errno));
            return -1;
        }
        /* close the read side of the pipefds and return the write side */
        FUNC0(pipefds[0]);
        fd = pipefds[1];
    } else {
        struct stat st;
        int ret;

        ret = FUNC10(path, &st);
        if (ret == 0 && (st.st_mode & S_IFMT) == S_IFSOCK) {
            struct sockaddr_un sa;
            if (FUNC13(path) >= sizeof(sa.sun_path)) {
                FUNC3("path:%s is too long as a unix socket name", path);
                return -1;
            }
            if ((fd = FUNC9(AF_UNIX, SOCK_STREAM, 0)) == -1) {
                FUNC3("failed to create socket for log file:%s:%s\n", path, FUNC12(errno));
                return -1;
            }
            FUNC6(&sa, 0, sizeof(sa));
            sa.sun_family = AF_UNIX;
            FUNC11(sa.sun_path, path);
            if (FUNC1(fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
                FUNC3("failed to connect socket for log file:%s:%s\n", path, FUNC12(errno));
                FUNC0(fd);
                return -1;
            }

        } else {
            if ((fd = FUNC7(path, O_CREAT | O_WRONLY | O_APPEND | O_CLOEXEC, 0644)) == -1) {
                FUNC3("failed to open log file:%s:%s\n", path, FUNC12(errno));
                return -1;
            }
        }
    }

    return fd;
}