
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int data; } ;
typedef TYPE_2__ h2o_http2_ping_payload_t ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_3__ h2o_http2_frame_t ;
struct TYPE_10__ {int buf; } ;
struct TYPE_13__ {TYPE_1__ _write; } ;
typedef TYPE_4__ h2o_http2_conn_t ;


 int H2O_HTTP2_FRAME_FLAG_ACK ;
 int h2o_http2_conn_request_write (TYPE_4__*) ;
 int h2o_http2_decode_ping_payload (TYPE_2__*,TYPE_3__*,char const**) ;
 int h2o_http2_encode_ping_frame (int *,int,int ) ;

__attribute__((used)) static int handle_ping_frame(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_ping_payload_t payload;
    int ret;

    if ((ret = h2o_http2_decode_ping_payload(&payload, frame, err_desc)) != 0)
        return ret;

    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_ACK) == 0) {
        h2o_http2_encode_ping_frame(&conn->_write.buf, 1, payload.data);
        h2o_http2_conn_request_write(conn);
    }

    return 0;
}
