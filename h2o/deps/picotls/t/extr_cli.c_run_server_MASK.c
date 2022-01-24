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
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  ptls_handshake_properties_t ;
typedef  int /*<<< orphan*/  ptls_context_t ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(struct sockaddr *sa, socklen_t salen, ptls_context_t *ctx, const char *input_file,
                      ptls_handshake_properties_t *hsprop, int request_key_update)
{
    int listen_fd, conn_fd, on = 1;

    if ((listen_fd = FUNC8(sa->sa_family, SOCK_STREAM, 0)) == -1) {
        FUNC6("socket(2) failed");
        return 1;
    }
    if (FUNC7(listen_fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) != 0) {
        FUNC6("setsockopt(SO_REUSEADDR) failed");
        return 1;
    }
    if (FUNC1(listen_fd, sa, salen) != 0) {
        FUNC6("bind(2) failed");
        return 1;
    }
    if (FUNC4(listen_fd, SOMAXCONN) != 0) {
        FUNC6("listen(2) failed");
        return 1;
    }

    FUNC2(stderr, "server started on port %d\n", FUNC5(((struct sockaddr_in *) sa)->sin_port));
    while (1) {
        FUNC2(stderr, "waiting for connections\n");
        if ((conn_fd = FUNC0(listen_fd, NULL, 0)) != -1)
            FUNC3(conn_fd, ctx, NULL, input_file, hsprop, request_key_update, 0);
    }

    return 0;
}