#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  cb; } ;
struct TYPE_15__ {int /*<<< orphan*/  request_end_at; } ;
struct TYPE_14__ {int /*<<< orphan*/  total; int /*<<< orphan*/  body; } ;
struct TYPE_18__ {TYPE_9__ _timeout; TYPE_4__* ctx; TYPE_2__ timings; TYPE_1__ bytes_written; } ;
struct TYPE_16__ {int req; int res; } ;
struct st_h2o_http1client_t {TYPE_5__ super; TYPE_3__ state; int /*<<< orphan*/  sock; scalar_t__ _is_chunked; } ;
struct TYPE_19__ {struct st_h2o_http1client_t* data; } ;
typedef  TYPE_6__ h2o_socket_t ;
struct TYPE_20__ {scalar_t__ len; } ;
typedef  TYPE_7__ h2o_iovec_t ;
struct TYPE_17__ {int /*<<< orphan*/  first_byte_timeout; int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  STREAM_STATE_BODY 130 
#define  STREAM_STATE_CLOSED 129 
#define  STREAM_STATE_HEAD 128 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http1client_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_httpclient_error_io ; 
 TYPE_7__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_7__*,int,void (*) (TYPE_6__*,char const*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (struct st_h2o_http1client_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_head_first_byte_timeout ; 

__attribute__((used)) static void FUNC8(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;

    FUNC6(&client->super._timeout);

    if (err != NULL) {
        FUNC7(client, h2o_httpclient_error_io);
        return;
    }

    if (client->_is_chunked) {
        client->_is_chunked = 0;
        h2o_iovec_t last = FUNC3(FUNC0("0\r\n\r\n"));
        client->super.bytes_written.body += last.len;
        client->super.bytes_written.total += last.len;
        FUNC4(client->sock, &last, 1, on_whole_request_sent);
        return;
    }

    client->state.req = STREAM_STATE_CLOSED;
    client->super.timings.request_end_at = FUNC2(client->super.ctx->loop);

    switch (client->state.res) {
    case STREAM_STATE_HEAD:
        client->super._timeout.cb = on_head_first_byte_timeout;
        FUNC5(client->super.ctx->loop, client->super.ctx->first_byte_timeout, &client->super._timeout);
        break;
    case STREAM_STATE_BODY:
        break;
    case STREAM_STATE_CLOSED:
        FUNC1(client);
        break;
    }
}