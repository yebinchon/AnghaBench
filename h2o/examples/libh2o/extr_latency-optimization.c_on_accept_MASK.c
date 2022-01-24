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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 scalar_t__ mode_server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sock ; 
 int /*<<< orphan*/ * ssl_ctx ; 

__attribute__((used)) static void FUNC5(h2o_socket_t *listener, const char *err)
{
    if (err != NULL)
        return;

    if ((sock = FUNC0(listener)) != NULL) {
        FUNC2(listener);
        if (ssl_ctx != NULL) {
            FUNC3(sock, ssl_ctx, mode_server ? NULL : "blahblah", FUNC1(NULL, 0),
                                     on_handshake_complete);
        } else {
            FUNC4(sock, NULL);
        }
    }
}