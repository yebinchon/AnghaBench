
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bytes_contiguous; TYPE_2__* partial_frame; TYPE_1__* body; } ;
struct st_h2o_http3client_req_t {TYPE_3__ recvbuf; } ;
struct TYPE_9__ {struct st_h2o_http3client_req_t* data; } ;
typedef TYPE_4__ quicly_stream_t ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {scalar_t__ size; } ;


 int H2O_HTTP3_ERROR_REQUEST_CANCELLED ;
 int assert (int) ;
 int close_stream (struct st_h2o_http3client_req_t*,int ) ;
 int destroy_request (struct st_h2o_http3client_req_t*) ;
 int handle_input_error (struct st_h2o_http3client_req_t*,int) ;

__attribute__((used)) static int on_receive_reset(quicly_stream_t *qs, int err)
{
    struct st_h2o_http3client_req_t *req = qs->data;

    assert(req->recvbuf.body->size + req->recvbuf.partial_frame->size == req->recvbuf.bytes_contiguous);

    handle_input_error(req, err);
    close_stream(req, H2O_HTTP3_ERROR_REQUEST_CANCELLED);
    destroy_request(req);

    return 0;
}
