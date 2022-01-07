
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_h2o_http3client_req_t {TYPE_1__* quic; } ;
struct TYPE_2__ {int * data; int * callbacks; } ;


 int quicly_stream_noop_callbacks ;

__attribute__((used)) static void detach_stream(struct st_h2o_http3client_req_t *req)
{
    req->quic->callbacks = &quicly_stream_noop_callbacks;
    req->quic->data = ((void*)0);
    req->quic = ((void*)0);
}
