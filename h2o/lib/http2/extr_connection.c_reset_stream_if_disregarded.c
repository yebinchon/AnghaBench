
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ stream_id; } ;
typedef TYPE_2__ h2o_http2_stream_t ;
struct TYPE_8__ {scalar_t__ max_open; } ;
struct TYPE_10__ {TYPE_1__ pull_stream_ids; } ;
typedef TYPE_3__ h2o_http2_conn_t ;


 int h2o_http2_stream_is_push (scalar_t__) ;
 int h2o_http2_stream_reset (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int reset_stream_if_disregarded(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    if (!h2o_http2_stream_is_push(stream->stream_id) && stream->stream_id > conn->pull_stream_ids.max_open) {

        h2o_http2_stream_reset(conn, stream);
        return 1;
    }
    return 0;
}
