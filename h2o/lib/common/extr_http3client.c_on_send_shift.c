
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_http3client_req_t {int sendbuf; } ;
struct TYPE_3__ {struct st_h2o_http3client_req_t* data; } ;
typedef TYPE_1__ quicly_stream_t ;


 int assert (int ) ;
 int h2o_buffer_consume (int *,size_t) ;

__attribute__((used)) static void on_send_shift(quicly_stream_t *qs, size_t delta)
{
    struct st_h2o_http3client_req_t *req = qs->data;

    assert(req != ((void*)0));
    h2o_buffer_consume(&req->sendbuf, delta);
}
