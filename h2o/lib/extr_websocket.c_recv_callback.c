
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wslay_event_context_ptr ;
typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* sock; int ws_ctx; } ;
typedef TYPE_2__ h2o_websocket_conn_t ;
struct TYPE_6__ {size_t size; int bytes; } ;
struct TYPE_4__ {TYPE_3__* input; } ;


 int WSLAY_ERR_WOULDBLOCK ;
 int h2o_buffer_consume (TYPE_3__**,size_t) ;
 int memcpy (int *,int ,size_t) ;
 int wslay_event_set_error (int ,int ) ;

__attribute__((used)) static ssize_t recv_callback(wslay_event_context_ptr ctx, uint8_t *buf, size_t len, int flags, void *_conn)
{
    h2o_websocket_conn_t *conn = _conn;


    if (conn->sock->input->size == 0) {
        wslay_event_set_error(conn->ws_ctx, WSLAY_ERR_WOULDBLOCK);
        return -1;
    }

    if (conn->sock->input->size < len)
        len = conn->sock->input->size;
    memcpy(buf, conn->sock->input->bytes, len);
    h2o_buffer_consume(&conn->sock->input, len);
    return len;
}
