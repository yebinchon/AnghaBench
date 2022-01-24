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
struct st_h2o_http1_conn_t {int /*<<< orphan*/  _conns; int /*<<< orphan*/ * sock; int /*<<< orphan*/  req; int /*<<< orphan*/ * req_body; int /*<<< orphan*/  _timeout_entry; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  H1_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http1_conn_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct st_h2o_http1_conn_t *conn, int close_socket)
{
    if (conn->sock != NULL)
        FUNC0(H1_CLOSE, &conn->super);
    FUNC6(&conn->_timeout_entry);
    if (conn->req_body != NULL)
        FUNC2(&conn->req_body);
    FUNC3(&conn->req);
    if (conn->sock != NULL && close_socket)
        FUNC5(conn->sock);
    FUNC4(&conn->_conns);
    FUNC1(conn);
}