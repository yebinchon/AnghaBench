
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t body; size_t total; } ;
struct TYPE_13__ {TYPE_2__ bytes_written; } ;
struct TYPE_11__ {scalar_t__ res; } ;
struct st_h2o_http1client_t {int _body_buf_is_done; int sock; TYPE_3__ super; scalar_t__ _is_chunked; TYPE_5__* _body_buf_in_flight; int * _body_buf; scalar_t__ _do_keepalive; TYPE_1__ state; } ;
struct TYPE_14__ {scalar_t__ len; int base; } ;
typedef TYPE_4__ h2o_iovec_t ;
typedef int h2o_httpclient_t ;
struct TYPE_15__ {scalar_t__ size; int bytes; } ;


 scalar_t__ STREAM_STATE_CLOSED ;
 int assert (int) ;
 size_t encode_chunk (struct st_h2o_http1client_t*,TYPE_4__*,TYPE_4__,size_t*) ;
 int h2o_buffer_init (int **,int *) ;
 int h2o_buffer_try_append (int **,int ,scalar_t__) ;
 TYPE_4__ h2o_iovec_init (int ,scalar_t__) ;
 int h2o_socket_buffer_prototype ;
 scalar_t__ h2o_socket_is_writing (int ) ;
 int h2o_socket_write (int ,TYPE_4__*,int,int (*) (int ,int *)) ;
 int on_req_body_done (int ,int *) ;
 int swap_buffers (int **,TYPE_5__**) ;

__attribute__((used)) static int do_write_req(h2o_httpclient_t *_client, h2o_iovec_t chunk, int is_end_stream)
{
    struct st_h2o_http1client_t *client = (struct st_h2o_http1client_t *)_client;

    client->_body_buf_is_done = is_end_stream;

    if (client->_body_buf == ((void*)0))
        h2o_buffer_init(&client->_body_buf, &h2o_socket_buffer_prototype);

    if (chunk.len != 0) {
        if (!h2o_buffer_try_append(&client->_body_buf, chunk.base, chunk.len))
            return -1;
    }

    if (client->state.res == STREAM_STATE_CLOSED) {

        client->_do_keepalive = 0;
    }

    if (h2o_socket_is_writing(client->sock))
        return 0;

    assert(client->_body_buf_in_flight == ((void*)0) || client->_body_buf_in_flight->size == 0);

    swap_buffers(&client->_body_buf, &client->_body_buf_in_flight);

    if (client->_body_buf_in_flight->size == 0) {

        on_req_body_done(client->sock, ((void*)0));
        return 0;
    }

    h2o_iovec_t iov = h2o_iovec_init(client->_body_buf_in_flight->bytes, client->_body_buf_in_flight->size);
    if (client->_is_chunked) {
        h2o_iovec_t bufs[3];
        size_t bytes;
        size_t bufcnt = encode_chunk(client, bufs, iov, &bytes);
        client->super.bytes_written.body += bytes;
        client->super.bytes_written.total += bytes;
        h2o_socket_write(client->sock, bufs, bufcnt, on_req_body_done);
    } else {
        client->super.bytes_written.body += iov.len;
        client->super.bytes_written.total += iov.len;
        h2o_socket_write(client->sock, &iov, 1, on_req_body_done);
    }
    return 0;
}
