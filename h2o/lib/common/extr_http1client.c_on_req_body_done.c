
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_http1client_t {int sock; scalar_t__ _body_buf_is_done; int super; TYPE_1__* _body_buf; TYPE_4__* _body_buf_in_flight; int (* proceed_req ) (int *,int ,int ) ;} ;
struct TYPE_6__ {struct st_h2o_http1client_t* data; } ;
typedef TYPE_2__ h2o_socket_t ;
typedef int h2o_send_state_t ;
struct TYPE_7__ {int size; } ;
struct TYPE_5__ {scalar_t__ size; } ;


 int H2O_SEND_STATE_FINAL ;
 int H2O_SEND_STATE_IN_PROGRESS ;
 int do_write_req (int *,int ,scalar_t__) ;
 int h2o_buffer_consume (TYPE_4__**,int ) ;
 int h2o_iovec_init (int *,int ) ;
 int on_whole_request_sent (int ,char const*) ;
 int stub1 (int *,int ,int ) ;

__attribute__((used)) static void on_req_body_done(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;

    if (client->_body_buf_in_flight != ((void*)0)) {
        if (err == ((void*)0)) {
            h2o_send_state_t send_state = client->_body_buf_is_done ? H2O_SEND_STATE_FINAL : H2O_SEND_STATE_IN_PROGRESS;
            client->proceed_req(&client->super, client->_body_buf_in_flight->size, send_state);
        }
        h2o_buffer_consume(&client->_body_buf_in_flight, client->_body_buf_in_flight->size);
    }

    if (err) {
        on_whole_request_sent(client->sock, err);
        return;
    }

    if (client->_body_buf != ((void*)0) && client->_body_buf->size != 0) {
        do_write_req(&client->super, h2o_iovec_init(((void*)0), 0), client->_body_buf_is_done);
    } else if (client->_body_buf_is_done) {
        on_whole_request_sent(client->sock, ((void*)0));
    }
}
