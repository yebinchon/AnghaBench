
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int connpool; } ;
struct st_h2o_http2client_stream_t {TYPE_4__* conn; TYPE_3__ super; int stream_id; } ;
typedef scalar_t__ khiter_t ;
struct TYPE_6__ {scalar_t__ num_streams; TYPE_1__* ctx; } ;
struct TYPE_8__ {int keepalive_timeout; TYPE_2__ super; int streams; } ;
struct TYPE_5__ {int keepalive_timeout; int loop; } ;


 int adjust_conn_linkedlist (int ,TYPE_4__*,int ) ;
 int assert (int) ;
 int h2o_timer_link (int ,int ,int *) ;
 int kh_del (struct st_h2o_http2client_stream_t*,int ,scalar_t__) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get (struct st_h2o_http2client_stream_t*,int ,int ) ;

__attribute__((used)) static void unregister_stream(struct st_h2o_http2client_stream_t *stream)
{
    khiter_t iter = kh_get(stream, stream->conn->streams, stream->stream_id);
    assert(iter != kh_end(stream->conn->streams));
    kh_del(stream, stream->conn->streams, iter);

    --stream->conn->super.num_streams;

    if (stream->conn->super.num_streams == 0)
        h2o_timer_link(stream->conn->super.ctx->loop, stream->conn->super.ctx->keepalive_timeout, &stream->conn->keepalive_timeout);

    adjust_conn_linkedlist(stream->super.connpool, stream->conn, 0);
}
