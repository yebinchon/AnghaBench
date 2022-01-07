
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_http2_goaway_payload_t ;
typedef int h2o_http2_frame_t ;
struct TYPE_4__ {int max_open; } ;
struct TYPE_5__ {TYPE_1__ push_stream_ids; } ;
typedef TYPE_2__ h2o_http2_conn_t ;


 int h2o_http2_decode_goaway_payload (int *,int *,char const**) ;

__attribute__((used)) static int handle_goaway_frame(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_goaway_payload_t payload;
    int ret;

    if ((ret = h2o_http2_decode_goaway_payload(&payload, frame, err_desc)) != 0)
        return ret;


    conn->push_stream_ids.max_open = 0x7ffffffe;

    return 0;
}
