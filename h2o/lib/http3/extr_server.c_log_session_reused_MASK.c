#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  quic; } ;
struct st_h2o_http3_server_conn_t {TYPE_1__ h3; } ;
typedef  int /*<<< orphan*/  ptls_t ;
struct TYPE_5__ {scalar_t__ conn; } ;
typedef  TYPE_2__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static h2o_iovec_t FUNC4(h2o_req_t *req)
{
    struct st_h2o_http3_server_conn_t *conn = (struct st_h2o_http3_server_conn_t *)req->conn;
    ptls_t *tls = FUNC3(conn->h3.quic);
    return FUNC2(tls) ? FUNC1(FUNC0("1")) : FUNC1(FUNC0("0"));
}