
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sending_link; int * buf; } ;
struct TYPE_7__ {int done; int * proceed_req; } ;
struct st_h2o_http2client_stream_t {TYPE_5__* conn; TYPE_3__ output; TYPE_1__ streaming; } ;
struct TYPE_10__ {int len; int base; } ;
typedef TYPE_4__ h2o_iovec_t ;
typedef int h2o_httpclient_t ;
struct TYPE_8__ {int sending_streams; } ;
struct TYPE_11__ {TYPE_2__ output; } ;


 int assert (int ) ;
 int h2o_buffer_append (int **,int ,int ) ;
 int h2o_buffer_init (int **,int *) ;
 int h2o_linklist_insert (int *,int *) ;
 int h2o_linklist_is_linked (int *) ;
 int h2o_socket_buffer_prototype ;
 int request_write (TYPE_5__*) ;

__attribute__((used)) static int do_write_req(h2o_httpclient_t *_client, h2o_iovec_t chunk, int is_end_stream)
{
    struct st_h2o_http2client_stream_t *stream = (void *)_client;
    assert(stream->streaming.proceed_req != ((void*)0));

    if (is_end_stream)
        stream->streaming.done = 1;

    if (stream->output.buf == ((void*)0)) {
        h2o_buffer_init(&stream->output.buf, &h2o_socket_buffer_prototype);
    }

    if (chunk.len != 0) {
        h2o_buffer_append(&stream->output.buf, chunk.base, chunk.len);
    }

    if (!h2o_linklist_is_linked(&stream->output.sending_link)) {
        h2o_linklist_insert(&stream->conn->output.sending_streams, &stream->output.sending_link);
        request_write(stream->conn);
    }

    return 0;
}
