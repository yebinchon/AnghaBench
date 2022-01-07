
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ (* on_body ) (TYPE_6__*,int *) ;} ;
struct TYPE_11__ {int response_end_at; } ;
struct TYPE_15__ {int _timeout; TYPE_4__* ctx; TYPE_3__ _cb; TYPE_2__ timings; } ;
struct TYPE_10__ {int res; } ;
struct st_h2o_http1client_t {TYPE_6__ super; TYPE_1__ state; } ;
struct TYPE_14__ {scalar_t__ bytes_read; struct st_h2o_http1client_t* data; } ;
typedef TYPE_5__ h2o_socket_t ;
struct TYPE_13__ {int io_timeout; int loop; } ;


 int STREAM_STATE_CLOSED ;
 int close_client (struct st_h2o_http1client_t*) ;
 int close_response (struct st_h2o_http1client_t*) ;
 int do_update_window (TYPE_6__*) ;
 int h2o_gettimeofday (int ) ;
 int * h2o_httpclient_error_is_eos ;
 int h2o_timer_link (int ,int ,int *) ;
 int h2o_timer_unlink (int *) ;
 scalar_t__ stub1 (TYPE_6__*,int *) ;
 scalar_t__ stub2 (TYPE_6__*,int *) ;

__attribute__((used)) static void on_body_until_close(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;

    h2o_timer_unlink(&client->super._timeout);

    if (err != ((void*)0)) {
        client->state.res = STREAM_STATE_CLOSED;
        client->super.timings.response_end_at = h2o_gettimeofday(client->super.ctx->loop);
        client->super._cb.on_body(&client->super, h2o_httpclient_error_is_eos);
        close_response(client);
        return;
    }

    if (sock->bytes_read != 0) {
        if (client->super._cb.on_body(&client->super, ((void*)0)) != 0) {
            close_client(client);
            return;
        }
        do_update_window(&client->super);
    }

    h2o_timer_link(client->super.ctx->loop, client->super.ctx->io_timeout, &client->super._timeout);
}
