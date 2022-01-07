
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ bytes_written; } ;
struct st_h2o_http3client_req_t {TYPE_2__* conn; TYPE_4__* quic; TYPE_1__ proceed_req; } ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef TYPE_3__ h2o_iovec_t ;
typedef int h2o_httpclient_t ;
struct TYPE_13__ {scalar_t__ size_inflight; } ;
struct TYPE_12__ {TYPE_5__ sendstate; } ;
struct TYPE_10__ {int super; } ;


 int assert (int) ;
 size_t emit_data (struct st_h2o_http3client_req_t*,TYPE_3__) ;
 int h2o_http3_schedule_timer (int *) ;
 scalar_t__ quicly_sendstate_is_open (TYPE_5__*) ;
 int quicly_sendstate_shutdown (TYPE_5__*,scalar_t__) ;
 int quicly_stream_sync_sendbuf (TYPE_4__*,int) ;

__attribute__((used)) static int do_write_req(h2o_httpclient_t *_client, h2o_iovec_t chunk, int is_end_stream)
{
    struct st_h2o_http3client_req_t *req = (void *)_client;

    assert(req->quic != ((void*)0) && quicly_sendstate_is_open(&req->quic->sendstate));
    assert(req->proceed_req.bytes_written == 0);

    size_t bytes_sent = emit_data(req, chunk);



    if (is_end_stream)
        quicly_sendstate_shutdown(&req->quic->sendstate, req->quic->sendstate.size_inflight + bytes_sent);

    req->proceed_req.bytes_written = chunk.len;
    quicly_stream_sync_sendbuf(req->quic, 1);
    h2o_http3_schedule_timer(&req->conn->super);
    return 0;
}
