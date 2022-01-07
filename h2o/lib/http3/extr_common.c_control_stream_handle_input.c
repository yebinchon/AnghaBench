
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_http3_ingress_unistream_t {int dummy; } ;
struct TYPE_9__ {scalar_t__ type; int length; int payload; } ;
typedef TYPE_2__ h2o_http3_read_frame_t ;
struct TYPE_10__ {TYPE_1__* callbacks; int quic; } ;
typedef TYPE_3__ h2o_http3_conn_t ;
struct TYPE_8__ {int (* handle_control_stream_frame ) (TYPE_3__*,scalar_t__,int ,int ,char const**) ;} ;


 int H2O_HTTP3_ERROR_FRAME_UNEXPECTED ;
 int H2O_HTTP3_ERROR_INCOMPLETE ;
 scalar_t__ H2O_HTTP3_FRAME_TYPE_DATA ;
 scalar_t__ H2O_HTTP3_FRAME_TYPE_SETTINGS ;
 int H2O_HTTP3_STREAM_TYPE_CONTROL ;
 int h2o_http3_has_received_settings (TYPE_3__*) ;
 int h2o_http3_read_frame (TYPE_2__*,int ,int ,int const**,int const*,char const**) ;
 int quicly_is_client (int ) ;
 int stub1 (TYPE_3__*,scalar_t__,int ,int ,char const**) ;

__attribute__((used)) static int control_stream_handle_input(h2o_http3_conn_t *conn, struct st_h2o_http3_ingress_unistream_t *stream, const uint8_t **src,
                                       const uint8_t *src_end, const char **err_desc)
{
    h2o_http3_read_frame_t frame;
    int ret;

    do {
        if ((ret = h2o_http3_read_frame(&frame, quicly_is_client(conn->quic), H2O_HTTP3_STREAM_TYPE_CONTROL, src, src_end,
                                        err_desc)) != 0) {
            if (ret == H2O_HTTP3_ERROR_INCOMPLETE)
                ret = 0;
            break;
        }
        if (h2o_http3_has_received_settings(conn) == (frame.type == H2O_HTTP3_FRAME_TYPE_SETTINGS) ||
            frame.type == H2O_HTTP3_FRAME_TYPE_DATA)
            return H2O_HTTP3_ERROR_FRAME_UNEXPECTED;
        if ((ret = conn->callbacks->handle_control_stream_frame(conn, frame.type, frame.payload, frame.length, err_desc)) != 0)
            break;
    } while (*src != src_end);

    return ret;
}
