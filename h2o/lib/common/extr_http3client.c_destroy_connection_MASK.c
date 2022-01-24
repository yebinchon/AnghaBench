#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct st_h2o_http3client_conn_t* base; } ;
struct TYPE_5__ {struct st_h2o_http3client_conn_t* base; } ;
struct TYPE_7__ {TYPE_2__ authority; TYPE_1__ host; } ;
struct TYPE_8__ {TYPE_3__ origin_url; } ;
struct st_h2o_http3client_conn_t {int /*<<< orphan*/  super; TYPE_4__ server; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * getaddr_req; int /*<<< orphan*/  clients_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http3client_conn_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct st_h2o_http3client_conn_t *conn)
{
    if (FUNC3(&conn->clients_link))
        FUNC4(&conn->clients_link);
    /* FIXME pending_requests */
    if (conn->getaddr_req != NULL)
        FUNC1(conn->getaddr_req);
    FUNC5(&conn->timeout);
    FUNC0(conn->server.origin_url.host.base);
    FUNC0(conn->server.origin_url.authority.base);
    FUNC2(&conn->super);
    FUNC0(conn);
}