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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC10(const char *socket_path) {
    char *path = NULL;
    if (socket_path != NULL) {
        path = FUNC8(socket_path);
    }

    if (path == NULL) {
        if ((path = FUNC4("I3SOCK")) != NULL) {
            path = FUNC8(path);
        }
    }

    if (path == NULL) {
        path = FUNC6("I3_SOCKET_PATH", NULL, 0);
    }

    if (path == NULL) {
        path = FUNC8("/tmp/i3-ipc.sock");
    }

    int sockfd = FUNC7(AF_LOCAL, SOCK_STREAM, 0);
    if (sockfd == -1)
        FUNC1(EXIT_FAILURE, "Could not create socket");

    (void)FUNC2(sockfd, F_SETFD, FD_CLOEXEC);

    struct sockaddr_un addr;
    FUNC5(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_LOCAL;
    FUNC9(addr.sun_path, path, sizeof(addr.sun_path) - 1);
    if (FUNC0(sockfd, (const struct sockaddr *)&addr, sizeof(struct sockaddr_un)) < 0)
        FUNC1(EXIT_FAILURE, "Could not connect to i3 on socket %s", path);
    FUNC3(path);
    return sockfd;
}