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
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_http2_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(h2o_socket_t *sock, const char *err)
{
    h2o_http2_conn_t *conn = sock->data;

    if (err != NULL) {
        FUNC0(conn);
        return;
    }
    FUNC1(conn);
}