#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_socket_t ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  client_on_read_first ; 
 int /*<<< orphan*/  client_on_write_complete ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char const* h2o_socket_error_ssl_cert_name_mismatch ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ mode_server ; 
 int /*<<< orphan*/  server_on_read_first ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(h2o_socket_t *sock, const char *err)
{
    if (err != NULL && err != h2o_socket_error_ssl_cert_name_mismatch) {
        /* TLS handshake failed */
        FUNC3(stderr, "TLS handshake failure:%s\n", err);
        FUNC0(stderr);
        FUNC4(sock);
        FUNC2(1);
        return;
    }

    if (mode_server) {
        FUNC5(sock, server_on_read_first);
    } else {
        h2o_iovec_t buf = {FUNC1("0")};
        FUNC6(sock, &buf, 1, client_on_write_complete);
        FUNC5(sock, client_on_read_first);
    }
}