
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ res; scalar_t__ req; } ;
struct st_h2o_http1client_t {int sock; TYPE_1__ state; } ;


 scalar_t__ STREAM_STATE_CLOSED ;
 int assert (int) ;
 int close_client (struct st_h2o_http1client_t*) ;
 int h2o_socket_read_stop (int ) ;

__attribute__((used)) static void close_response(struct st_h2o_http1client_t *client)
{
    assert(client->state.res == STREAM_STATE_CLOSED);
    if (client->state.req == STREAM_STATE_CLOSED) {
        close_client(client);
    } else {
        h2o_socket_read_stop(client->sock);
    }
}
