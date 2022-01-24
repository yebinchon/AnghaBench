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
typedef  int /*<<< orphan*/  h2o_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 scalar_t__ mode_server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ssl_ctx ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(h2o_socket_t *sock, const char *err)
{
    if (err != NULL) {
        /* connection failed */
        FUNC1(stderr, "failed to connect to host:%s\n", err);
        FUNC3(sock);
        FUNC0(1);
        return;
    }

    if (ssl_ctx != NULL) {
        FUNC4(sock, ssl_ctx, mode_server ? NULL : "blahblah", FUNC2(NULL, 0), on_handshake_complete);
    } else {
        FUNC5(sock, NULL);
    }
}