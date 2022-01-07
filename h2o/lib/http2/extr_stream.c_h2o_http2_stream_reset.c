
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_7__ {int state; int _link; TYPE_1__ _data; } ;
typedef TYPE_2__ h2o_http2_stream_t ;
typedef int h2o_http2_conn_t ;
 int h2o_http2_stream_close (int *,TYPE_2__*) ;
 int h2o_http2_stream_set_state (int *,TYPE_2__*,int) ;
 int h2o_linklist_is_linked (int *) ;

void h2o_http2_stream_reset(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    switch (stream->state) {
    case 134:
    case 132:
    case 133:
    case 131:
        h2o_http2_stream_close(conn, stream);
        break;
    case 128:
    case 130:
    case 129:
        h2o_http2_stream_set_state(conn, stream, 135);

    case 135:

        stream->_data.size = 0;
        if (h2o_linklist_is_linked(&stream->_link)) {

        } else {
            h2o_http2_stream_close(conn, stream);
        }
        break;
    }
}
