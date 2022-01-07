
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
struct TYPE_4__ {int cnt; TYPE_3__* bufs; } ;
struct TYPE_5__ {TYPE_1__ _write_buf; int ws_ctx; int sock; } ;
typedef TYPE_2__ h2o_websocket_conn_t ;
struct TYPE_6__ {size_t len; int base; } ;
typedef TYPE_3__ h2o_iovec_t ;


 int WSLAY_ERR_WOULDBLOCK ;
 int h2o_mem_alloc (size_t) ;
 scalar_t__ h2o_socket_is_writing (int ) ;
 int memcpy (int ,int const*,size_t) ;
 int wslay_event_set_error (int ,int ) ;

__attribute__((used)) static ssize_t send_callback(wslay_event_context_ptr ctx, const uint8_t *data, size_t len, int flags, void *_conn)
{
    h2o_websocket_conn_t *conn = _conn;
    h2o_iovec_t *buf;


    if (h2o_socket_is_writing(conn->sock) ||
        conn->_write_buf.cnt == sizeof(conn->_write_buf.bufs) / sizeof(conn->_write_buf.bufs[0])) {
        wslay_event_set_error(conn->ws_ctx, WSLAY_ERR_WOULDBLOCK);
        return -1;
    }

    buf = &conn->_write_buf.bufs[conn->_write_buf.cnt];


    buf->base = h2o_mem_alloc(len);
    buf->len = len;
    memcpy(buf->base, data, len);
    ++conn->_write_buf.cnt;
    return len;
}
