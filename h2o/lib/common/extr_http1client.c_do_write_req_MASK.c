#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t body; size_t total; } ;
struct TYPE_13__ {TYPE_2__ bytes_written; } ;
struct TYPE_11__ {scalar_t__ res; } ;
struct st_h2o_http1client_t {int _body_buf_is_done; int /*<<< orphan*/  sock; TYPE_3__ super; scalar_t__ _is_chunked; TYPE_5__* _body_buf_in_flight; int /*<<< orphan*/ * _body_buf; scalar_t__ _do_keepalive; TYPE_1__ state; } ;
struct TYPE_14__ {scalar_t__ len; int /*<<< orphan*/  base; } ;
typedef  TYPE_4__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_t ;
struct TYPE_15__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 scalar_t__ STREAM_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (struct st_h2o_http1client_t*,TYPE_4__*,TYPE_4__,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_5__**) ; 

__attribute__((used)) static int FUNC9(h2o_httpclient_t *_client, h2o_iovec_t chunk, int is_end_stream)
{
    struct st_h2o_http1client_t *client = (struct st_h2o_http1client_t *)_client;

    client->_body_buf_is_done = is_end_stream;

    if (client->_body_buf == NULL)
        FUNC2(&client->_body_buf, &h2o_socket_buffer_prototype);

    if (chunk.len != 0) {
        if (!FUNC3(&client->_body_buf, chunk.base, chunk.len))
            return -1;
    }

    if (client->state.res == STREAM_STATE_CLOSED) {
        /* have to close the connection for correct framing */
        client->_do_keepalive = 0;
    }

    if (FUNC5(client->sock))
        return 0;

    FUNC0(client->_body_buf_in_flight == NULL || client->_body_buf_in_flight->size == 0);

    FUNC8(&client->_body_buf, &client->_body_buf_in_flight);

    if (client->_body_buf_in_flight->size == 0) {
        /* return immediately if the chunk is empty */
        FUNC7(client->sock, NULL);
        return 0;
    }

    h2o_iovec_t iov = FUNC4(client->_body_buf_in_flight->bytes, client->_body_buf_in_flight->size);
    if (client->_is_chunked) {
        h2o_iovec_t bufs[3];
        size_t bytes;
        size_t bufcnt = FUNC1(client, bufs, iov, &bytes);
        client->super.bytes_written.body += bytes;
        client->super.bytes_written.total += bytes;
        FUNC6(client->sock, bufs, bufcnt, on_req_body_done);
    } else {
        client->super.bytes_written.body += iov.len;
        client->super.bytes_written.total += iov.len;
        FUNC6(client->sock, &iov, 1, on_req_body_done);
    }
    return 0;
}