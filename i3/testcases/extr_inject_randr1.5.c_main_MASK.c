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
struct sockaddr_un {char* sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct option {char* member_0; char* name; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  const member_1; } ;
struct ev_loop {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  ev_io ;
typedef  int /*<<< orphan*/  ev_child ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  child_cb ; 
 int /*<<< orphan*/  cleanup_socket ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ev_loop*,int /*<<< orphan*/ *) ; 
 struct ev_loop* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ev_loop*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ev_loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  getmonitors_reply ; 
 int FUNC16 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  getoutputinfo_reply ; 
 int FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC20 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC25 (char const*,char*) ; 
 int /*<<< orphan*/  sun_path ; 
 int /*<<< orphan*/  uds_connection_cb ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 

int FUNC27(int argc, char *argv[]) {
    static struct option long_options[] = {
        {"getmonitors_reply", required_argument, 0, 0},
        {"getoutputinfo_reply", required_argument, 0, 0},
        {0, 0, 0, 0},
    };
    char *options_string = "";
    int opt;
    int option_index = 0;

    while ((opt = FUNC16(argc, argv, options_string, long_options, &option_index)) != -1) {
        switch (opt) {
            case 0: {
                const char *option_name = long_options[option_index].name;
                if (FUNC25(option_name, "getmonitors_reply") == 0) {
                    FUNC19(optarg, &getmonitors_reply);
                } else if (FUNC25(option_name, "getoutputinfo_reply") == 0) {
                    FUNC19(optarg, &getoutputinfo_reply);
                }
                break;
            }
            default:
                FUNC11(EXIT_FAILURE);
        }
    }

    if (optind >= argc) {
        FUNC3(EXIT_FAILURE, "syntax: %s [options] <command>", argv[0]);
    }

    int fd = FUNC23(AF_LOCAL, SOCK_STREAM, 0);
    if (fd == -1) {
        FUNC2(EXIT_FAILURE, "socket(AF_UNIX)");
    }

    if (FUNC12(fd, F_SETFD, FD_CLOEXEC)) {
        FUNC26("Could not set FD_CLOEXEC");
    }

    struct sockaddr_un addr;
    FUNC18(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_UNIX;
    int i;
    bool bound = false;
    for (i = 0; i < 100; i++) {
        /* XXX: The path to X11 sockets differs on some platforms (e.g. Trusted
         * Solaris, HPUX), but since libxcb doesn’t provide a function to
         * generate the path, we’ll just have to hard-code it for now. */
        FUNC22(addr.sun_path, sizeof(addr.sun_path), "/tmp/.X11-unix/X%d", i);

        if (FUNC1(fd, (struct sockaddr *)&addr, sizeof(struct sockaddr_un)) == -1) {
            FUNC26("bind(%s)", addr.sun_path);
        } else {
            bound = true;
            /* Let the user know bind() was successful, so that they know the
             * error messages can be disregarded. */
            FUNC14(stderr, "Successfuly bound to %s\n", addr.sun_path);
            sun_path = FUNC24(addr.sun_path);
            break;
        }
    }

    if (!bound) {
        FUNC2(EXIT_FAILURE, "bind()");
    }

    FUNC0(cleanup_socket);

    /* This program will be started for each testcase which requires it, so we
     * expect precisely one connection. */
    if (FUNC17(fd, 1) == -1) {
        FUNC2(EXIT_FAILURE, "listen()");
    }

    pid_t child = FUNC13();
    if (child == -1) {
        FUNC2(EXIT_FAILURE, "fork()");
    }
    if (child == 0) {
        char *display;
        FUNC20(&display, ":%d", i);
        FUNC21("DISPLAY", display, 1);
        FUNC15(display);

        char **child_args = argv + optind;
        FUNC10(child_args[0], child_args);
        FUNC2(EXIT_FAILURE, "exec()");
    }

    struct ev_loop *loop = FUNC6(0);

    ev_child cw;
    FUNC4(&cw, child_cb, child, 0);
    FUNC5(loop, &cw);

    ev_io watcher;
    FUNC7(&watcher, uds_connection_cb, fd, EV_READ);
    FUNC8(loop, &watcher);

    FUNC9(loop, 0);
}