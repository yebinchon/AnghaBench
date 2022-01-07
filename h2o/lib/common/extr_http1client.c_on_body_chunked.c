
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_19__ {int (* on_body ) (TYPE_10__*,char*) ;} ;
struct TYPE_18__ {void* response_end_at; } ;
struct TYPE_14__ {int _timeout; TYPE_7__* ctx; TYPE_5__ _cb; TYPE_4__ timings; } ;
struct TYPE_20__ {scalar_t__ res; } ;
struct TYPE_16__ {int decoder; } ;
struct TYPE_17__ {TYPE_2__ chunked; } ;
struct st_h2o_http1client_t {int _seen_at_least_one_chunk; TYPE_10__ super; scalar_t__ _do_keepalive; TYPE_6__ state; TYPE_3__ _body_decoder; TYPE_1__* sock; } ;
struct TYPE_22__ {size_t bytes_read; struct st_h2o_http1client_t* data; } ;
typedef TYPE_8__ h2o_socket_t ;
struct TYPE_23__ {size_t bytes; size_t size; } ;
typedef TYPE_9__ h2o_buffer_t ;
struct TYPE_21__ {int io_timeout; int loop; } ;
struct TYPE_15__ {TYPE_9__* input; } ;


 scalar_t__ STREAM_STATE_CLOSED ;
 int close_client (struct st_h2o_http1client_t*) ;
 int close_response (struct st_h2o_http1client_t*) ;
 int do_update_window (TYPE_10__*) ;
 void* h2o_gettimeofday (int ) ;
 char* h2o_httpclient_error_http1_parse_failed ;
 int h2o_httpclient_error_io ;
 char* h2o_httpclient_error_is_eos ;
 char const* h2o_socket_error_closed ;
 int h2o_timer_link (int ,int ,int *) ;
 int h2o_timer_unlink (int *) ;
 int on_error (struct st_h2o_http1client_t*,int ) ;
 int phr_decode_chunked (int *,size_t,size_t*) ;
 int phr_decode_chunked_is_in_data (int *) ;
 int stub1 (TYPE_10__*,char*) ;
 int stub2 (TYPE_10__*,char const*) ;

__attribute__((used)) static void on_body_chunked(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;
    h2o_buffer_t *inbuf;

    h2o_timer_unlink(&client->super._timeout);

    if (err != ((void*)0)) {
        if (err == h2o_socket_error_closed && !phr_decode_chunked_is_in_data(&client->_body_decoder.chunked.decoder) &&
            client->_seen_at_least_one_chunk) {





            client->_do_keepalive = 0;
            client->state.res = STREAM_STATE_CLOSED;
            client->super.timings.response_end_at = h2o_gettimeofday(client->super.ctx->loop);
            client->super._cb.on_body(&client->super, h2o_httpclient_error_is_eos);
            close_response(client);
        } else {
            on_error(client, h2o_httpclient_error_io);
        }
        return;
    }

    inbuf = client->sock->input;
    if (sock->bytes_read != 0) {
        const char *errstr;
        int cb_ret;
        size_t newsz = sock->bytes_read;

        switch (phr_decode_chunked(&client->_body_decoder.chunked.decoder, inbuf->bytes + inbuf->size - newsz, &newsz)) {
        case -1:
            newsz = sock->bytes_read;
            client->_do_keepalive = 0;
            errstr = h2o_httpclient_error_http1_parse_failed;
            break;
        case -2:
            errstr = ((void*)0);
            break;
        default:
            client->_do_keepalive = 0;

        case 0:
            client->state.res = STREAM_STATE_CLOSED;
            errstr = h2o_httpclient_error_is_eos;
            client->super.timings.response_end_at = h2o_gettimeofday(client->super.ctx->loop);
            break;
        }
        inbuf->size -= sock->bytes_read - newsz;
        if (inbuf->size > 0)
            client->_seen_at_least_one_chunk = 1;
        cb_ret = client->super._cb.on_body(&client->super, errstr);
        if (client->state.res == STREAM_STATE_CLOSED) {
            close_response(client);
            return;
        } else if (errstr != ((void*)0)) {
            close_client(client);
            return;
        } else if (cb_ret != 0) {
            client->_do_keepalive = 0;
            close_client(client);
            return;
        }
        do_update_window(&client->super);
    }

    h2o_timer_link(client->super.ctx->loop, client->super.ctx->io_timeout, &client->super._timeout);
}
