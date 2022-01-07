
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_21__ {int cb; } ;
struct TYPE_15__ {int request_end_at; } ;
struct TYPE_14__ {int total; int body; } ;
struct TYPE_18__ {TYPE_9__ _timeout; TYPE_4__* ctx; TYPE_2__ timings; TYPE_1__ bytes_written; } ;
struct TYPE_16__ {int req; int res; } ;
struct st_h2o_http1client_t {TYPE_5__ super; TYPE_3__ state; int sock; scalar_t__ _is_chunked; } ;
struct TYPE_19__ {struct st_h2o_http1client_t* data; } ;
typedef TYPE_6__ h2o_socket_t ;
struct TYPE_20__ {scalar_t__ len; } ;
typedef TYPE_7__ h2o_iovec_t ;
struct TYPE_17__ {int first_byte_timeout; int loop; } ;


 int H2O_STRLIT (char*) ;



 int close_client (struct st_h2o_http1client_t*) ;
 int h2o_gettimeofday (int ) ;
 int h2o_httpclient_error_io ;
 TYPE_7__ h2o_iovec_init (int ) ;
 int h2o_socket_write (int ,TYPE_7__*,int,void (*) (TYPE_6__*,char const*)) ;
 int h2o_timer_link (int ,int ,TYPE_9__*) ;
 int h2o_timer_unlink (TYPE_9__*) ;
 int on_error (struct st_h2o_http1client_t*,int ) ;
 int on_head_first_byte_timeout ;

__attribute__((used)) static void on_whole_request_sent(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;

    h2o_timer_unlink(&client->super._timeout);

    if (err != ((void*)0)) {
        on_error(client, h2o_httpclient_error_io);
        return;
    }

    if (client->_is_chunked) {
        client->_is_chunked = 0;
        h2o_iovec_t last = h2o_iovec_init(H2O_STRLIT("0\r\n\r\n"));
        client->super.bytes_written.body += last.len;
        client->super.bytes_written.total += last.len;
        h2o_socket_write(client->sock, &last, 1, on_whole_request_sent);
        return;
    }

    client->state.req = 129;
    client->super.timings.request_end_at = h2o_gettimeofday(client->super.ctx->loop);

    switch (client->state.res) {
    case 128:
        client->super._timeout.cb = on_head_first_byte_timeout;
        h2o_timer_link(client->super.ctx->loop, client->super.ctx->first_byte_timeout, &client->super._timeout);
        break;
    case 130:
        break;
    case 129:
        close_client(client);
        break;
    }
}
