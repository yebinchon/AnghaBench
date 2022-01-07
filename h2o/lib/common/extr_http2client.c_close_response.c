
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ res; scalar_t__ req; } ;
struct st_h2o_http2client_stream_t {TYPE_1__ state; } ;


 scalar_t__ STREAM_STATE_CLOSED ;
 int assert (int) ;
 int close_stream (struct st_h2o_http2client_stream_t*) ;

__attribute__((used)) static void close_response(struct st_h2o_http2client_stream_t *stream)
{
    assert(stream->state.res != STREAM_STATE_CLOSED);
    stream->state.res = STREAM_STATE_CLOSED;
    if (stream->state.req == STREAM_STATE_CLOSED) {
        close_stream(stream);
    }
}
