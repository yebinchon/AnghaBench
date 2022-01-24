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
struct st_h2o_http1_conn_t {TYPE_1__* _req_entity_reader; } ;
struct TYPE_5__ {struct st_h2o_http1_conn_t* data; } ;
typedef  TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* handle_incoming_entity ) (struct st_h2o_http1_conn_t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http1_conn_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http1_conn_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_http1_conn_t*) ; 

void FUNC3(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1_conn_t *conn = sock->data;

    if (err != NULL) {
        FUNC0(conn, 1);
        return;
    }

    if (conn->_req_entity_reader == NULL)
        FUNC1(conn);
    else
        conn->_req_entity_reader->handle_incoming_entity(conn);
}