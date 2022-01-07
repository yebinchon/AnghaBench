
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int stream_id; int req; int * req_body; int * cache_digests; } ;
typedef TYPE_1__ h2o_http2_stream_t ;
struct TYPE_9__ {int * _http1_req_input; } ;
typedef TYPE_2__ h2o_http2_conn_t ;


 int free (TYPE_1__*) ;
 int h2o_buffer_dispose (int **) ;
 int h2o_cache_digests_destroy (int *) ;
 int h2o_dispose_request (int *) ;
 int h2o_http2_conn_unregister_stream (TYPE_2__*,TYPE_1__*) ;

void h2o_http2_stream_close(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    h2o_http2_conn_unregister_stream(conn, stream);
    if (stream->cache_digests != ((void*)0))
        h2o_cache_digests_destroy(stream->cache_digests);
    if (stream->req_body != ((void*)0))
        h2o_buffer_dispose(&stream->req_body);
    h2o_dispose_request(&stream->req);
    if (stream->stream_id == 1 && conn->_http1_req_input != ((void*)0))
        h2o_buffer_dispose(&conn->_http1_req_input);
    free(stream);
}
