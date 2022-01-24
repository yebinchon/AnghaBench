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
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ h2o_socket_t ;

/* Variables and functions */
 int exit_loop ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  on_handshake_complete ; 
 int /*<<< orphan*/  on_write ; 
 int /*<<< orphan*/ * ssl_ctx ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(h2o_socket_t *sock, const char *err)
{
    if (err != NULL) {
        /* connection failed */
        FUNC0(stderr, "failed to connect to host:%s\n", err);
        FUNC2(sock);
        exit_loop = 1;
        return;
    }

    if (ssl_ctx != NULL) {
        FUNC3(sock, ssl_ctx, host, FUNC1(NULL, 0), on_handshake_complete);
    } else {
        FUNC4(sock, sock->data, 1, on_write);
    }
}