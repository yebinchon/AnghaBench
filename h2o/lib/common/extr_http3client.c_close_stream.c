
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_http3client_req_t {TYPE_1__* quic; } ;
struct TYPE_3__ {int recvstate; int sendstate; } ;


 int detach_stream (struct st_h2o_http3client_req_t*) ;
 int quicly_recvstate_transfer_complete (int *) ;
 int quicly_request_stop (TYPE_1__*,int) ;
 int quicly_reset_stream (TYPE_1__*,int) ;
 int quicly_sendstate_transfer_complete (int *) ;

__attribute__((used)) static void close_stream(struct st_h2o_http3client_req_t *req, int err)
{

    if (!quicly_sendstate_transfer_complete(&req->quic->sendstate))
        quicly_reset_stream(req->quic, err);
    if (!quicly_recvstate_transfer_complete(&req->quic->recvstate))
        quicly_request_stop(req->quic, err);
    detach_stream(req);
}
