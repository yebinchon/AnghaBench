
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* ctx; TYPE_2__** buf; } ;
struct st_h2o_http1client_t {int reader; TYPE_5__* sock; TYPE_4__ super; } ;
typedef int h2o_httpclient_t ;
struct TYPE_8__ {int read; } ;
struct TYPE_12__ {TYPE_1__ _cb; } ;
struct TYPE_10__ {scalar_t__ max_buffer_size; } ;
struct TYPE_9__ {scalar_t__ size; } ;


 scalar_t__ h2o_socket_is_reading (TYPE_5__*) ;
 int h2o_socket_read_start (TYPE_5__*,int ) ;
 int h2o_socket_read_stop (TYPE_5__*) ;

__attribute__((used)) static void do_update_window(h2o_httpclient_t *_client)
{
    struct st_h2o_http1client_t *client = (void *)_client;
    if ((*client->super.buf)->size >= client->super.ctx->max_buffer_size) {
        if (h2o_socket_is_reading(client->sock)) {
            client->reader = client->sock->_cb.read;
            h2o_socket_read_stop(client->sock);
        }
    } else {
        if (!h2o_socket_is_reading(client->sock)) {
            h2o_socket_read_start(client->sock, client->reader);
        }
    }
}
