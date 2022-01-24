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
struct st_h2o_http2client_conn_t {int dummy; } ;
struct TYPE_3__ {struct st_h2o_http2client_conn_t* data; } ;
typedef  TYPE_1__ h2o_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http2client_conn_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http2client_conn_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_http2client_conn_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct st_h2o_http2client_conn_t*) ; 
 int /*<<< orphan*/  h2o_httpclient_error_io ; 

__attribute__((used)) static void FUNC4(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http2client_conn_t *conn = sock->data;

    if (err != NULL) {
        FUNC0(conn, h2o_httpclient_error_io);
        FUNC2(conn);
        return;
    }
    FUNC3(conn);
    FUNC1(conn);
}