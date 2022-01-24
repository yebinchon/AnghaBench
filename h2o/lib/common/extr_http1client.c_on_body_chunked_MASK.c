#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_19__ {int (* on_body ) (TYPE_10__*,char*) ;} ;
struct TYPE_18__ {void* response_end_at; } ;
struct TYPE_14__ {int /*<<< orphan*/  _timeout; TYPE_7__* ctx; TYPE_5__ _cb; TYPE_4__ timings; } ;
struct TYPE_20__ {scalar_t__ res; } ;
struct TYPE_16__ {int /*<<< orphan*/  decoder; } ;
struct TYPE_17__ {TYPE_2__ chunked; } ;
struct st_h2o_http1client_t {int _seen_at_least_one_chunk; TYPE_10__ super; scalar_t__ _do_keepalive; TYPE_6__ state; TYPE_3__ _body_decoder; TYPE_1__* sock; } ;
struct TYPE_22__ {size_t bytes_read; struct st_h2o_http1client_t* data; } ;
typedef  TYPE_8__ h2o_socket_t ;
struct TYPE_23__ {size_t bytes; size_t size; } ;
typedef  TYPE_9__ h2o_buffer_t ;
struct TYPE_21__ {int /*<<< orphan*/  io_timeout; int /*<<< orphan*/  loop; } ;
struct TYPE_15__ {TYPE_9__* input; } ;

/* Variables and functions */
 scalar_t__ STREAM_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http1client_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http1client_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 char* h2o_httpclient_error_http1_parse_failed ; 
 int /*<<< orphan*/  h2o_httpclient_error_io ; 
 char* h2o_httpclient_error_is_eos ; 
 char const* h2o_socket_error_closed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct st_h2o_http1client_t*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_10__*,char*) ; 
 int FUNC10 (TYPE_10__*,char const*) ; 

__attribute__((used)) static void FUNC11(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;
    h2o_buffer_t *inbuf;

    FUNC5(&client->super._timeout);

    if (err != NULL) {
        if (err == h2o_socket_error_closed && !FUNC8(&client->_body_decoder.chunked.decoder) &&
            client->_seen_at_least_one_chunk) {
            /*
             * if the peer closed after a full chunk, treat this
             * as if the transfer had complete, browsers appear to ignore
             * a missing 0\r\n chunk
             */
            client->_do_keepalive = 0;
            client->state.res = STREAM_STATE_CLOSED;
            client->super.timings.response_end_at = FUNC3(client->super.ctx->loop);
            client->super._cb.on_body(&client->super, h2o_httpclient_error_is_eos);
            FUNC1(client);
        } else {
            FUNC6(client, h2o_httpclient_error_io);
        }
        return;
    }

    inbuf = client->sock->input;
    if (sock->bytes_read != 0) {
        const char *errstr;
        int cb_ret;
        size_t newsz = sock->bytes_read;

        switch (FUNC7(&client->_body_decoder.chunked.decoder, inbuf->bytes + inbuf->size - newsz, &newsz)) {
        case -1: /* error */
            newsz = sock->bytes_read;
            client->_do_keepalive = 0;
            errstr = h2o_httpclient_error_http1_parse_failed;
            break;
        case -2: /* incomplete */
            errstr = NULL;
            break;
        default: /* complete, with garbage on tail; should disable keepalive */
            client->_do_keepalive = 0;
        /* fallthru */
        case 0: /* complete */
            client->state.res = STREAM_STATE_CLOSED;
            errstr = h2o_httpclient_error_is_eos;
            client->super.timings.response_end_at = FUNC3(client->super.ctx->loop);
            break;
        }
        inbuf->size -= sock->bytes_read - newsz;
        if (inbuf->size > 0)
            client->_seen_at_least_one_chunk = 1;
        cb_ret = client->super._cb.on_body(&client->super, errstr);
        if (client->state.res == STREAM_STATE_CLOSED) {
            FUNC1(client);
            return;
        } else if (errstr != NULL) {
            FUNC0(client);
            return;
        } else if (cb_ret != 0) {
            client->_do_keepalive = 0;
            FUNC0(client);
            return;
        }
        FUNC2(&client->super);
    }

    FUNC4(client->super.ctx->loop, client->super.ctx->io_timeout, &client->super._timeout);
}