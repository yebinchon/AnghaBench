#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_6__ {scalar_t__ (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  ctx; } ;
struct TYPE_7__ {size_t req_body_bytes_received; int /*<<< orphan*/ * proceed_req; TYPE_1__ write_req; } ;
struct st_h2o_http1_conn_t {TYPE_3__ _ostr_final; int /*<<< orphan*/ * _req_entity_reader; TYPE_2__ req; TYPE_4__* sock; } ;
struct TYPE_10__ {int /*<<< orphan*/  bytes; } ;
struct TYPE_9__ {TYPE_5__* input; } ;

/* Variables and functions */
 scalar_t__ OSTREAM_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http1_conn_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http1_conn_t*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__**,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct st_h2o_http1_conn_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct st_h2o_http1_conn_t *conn, size_t fragment_size, int complete)
{
    FUNC5(conn, 0, NULL);
    FUNC4(conn->sock);
    if (conn->req.write_req.cb(conn->req.write_req.ctx, FUNC3(conn->sock->input->bytes, fragment_size), complete) != 0) {
        FUNC1(conn, "Bad Gateway", "Bad Gateway");
        return;
    }
    FUNC2(&conn->sock->input, fragment_size);
    conn->req.req_body_bytes_received += fragment_size;
    if (complete) {
        conn->req.proceed_req = NULL;
        conn->_req_entity_reader = NULL;
        if (conn->_ostr_final.state == OSTREAM_STATE_DONE) {
            FUNC0(conn);
        }
    }
}