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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  DEFAULT_DIR_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 char* current_socketpath ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(const char *filename) {
    int sockfd;

    FUNC1(current_socketpath);

    char *resolved = FUNC11(filename);
    FUNC0("Creating IPC-socket at %s\n", resolved);
    char *copy = FUNC14(resolved);
    const char *dir = FUNC3(copy);
    if (!FUNC9(dir))
        FUNC8(dir, DEFAULT_DIR_MODE);
    FUNC5(copy);

    /* Unlink the unix domain socket before */
    FUNC16(resolved);

    if ((sockfd = FUNC13(AF_LOCAL, SOCK_STREAM, 0)) < 0) {
        FUNC10("socket()");
        FUNC5(resolved);
        return -1;
    }

    (void)FUNC4(sockfd, F_SETFD, FD_CLOEXEC);

    struct sockaddr_un addr;
    FUNC7(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_LOCAL;
    FUNC15(addr.sun_path, resolved, sizeof(addr.sun_path) - 1);
    if (FUNC2(sockfd, (struct sockaddr *)&addr, sizeof(struct sockaddr_un)) < 0) {
        FUNC10("bind()");
        FUNC5(resolved);
        return -1;
    }

    FUNC12(sockfd);

    if (FUNC6(sockfd, 5) < 0) {
        FUNC10("listen()");
        FUNC5(resolved);
        return -1;
    }

    current_socketpath = resolved;
    return sockfd;
}