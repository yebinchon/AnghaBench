
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int _timeout; TYPE_1__* connpool; } ;
struct st_h2o_http1client_t {int * _body_buf_in_flight; int * _body_buf; TYPE_2__ super; TYPE_4__* sock; scalar_t__ _do_keepalive; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {TYPE_6__* input; } ;
struct TYPE_9__ {scalar_t__ timeout; } ;
struct TYPE_7__ {TYPE_3__* socketpool; } ;


 int free (struct st_h2o_http1client_t*) ;
 int h2o_buffer_consume (TYPE_6__**,int ) ;
 int h2o_buffer_dispose (int **) ;
 int h2o_socket_close (TYPE_4__*) ;
 int h2o_socketpool_return (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void close_client(struct st_h2o_http1client_t *client)
{
    if (client->sock != ((void*)0)) {
        if (client->super.connpool != ((void*)0) && client->_do_keepalive && client->super.connpool->socketpool->timeout > 0) {

            h2o_buffer_consume(&client->sock->input, client->sock->input->size);
            h2o_socketpool_return(client->super.connpool->socketpool, client->sock);
        } else {
            h2o_socket_close(client->sock);
        }
    }
    if (h2o_timer_is_linked(&client->super._timeout))
        h2o_timer_unlink(&client->super._timeout);
    if (client->_body_buf != ((void*)0))
        h2o_buffer_dispose(&client->_body_buf);
    if (client->_body_buf_in_flight != ((void*)0))
        h2o_buffer_dispose(&client->_body_buf_in_flight);
    free(client);
}
