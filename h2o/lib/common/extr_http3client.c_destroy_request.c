
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _timeout; } ;
struct TYPE_4__ {int noncontiguous; int partial_frame; int body; } ;
struct st_h2o_http3client_req_t {int link; TYPE_1__ super; TYPE_2__ recvbuf; int sendbuf; int * quic; } ;


 int assert (int ) ;
 int free (struct st_h2o_http3client_req_t*) ;
 int h2o_buffer_dispose (int *) ;
 scalar_t__ h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;
 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void destroy_request(struct st_h2o_http3client_req_t *req)
{
    assert(req->quic == ((void*)0));
    h2o_buffer_dispose(&req->sendbuf);
    h2o_buffer_dispose(&req->recvbuf.body);
    h2o_buffer_dispose(&req->recvbuf.partial_frame);
    h2o_buffer_dispose(&req->recvbuf.noncontiguous);
    if (h2o_timer_is_linked(&req->super._timeout))
        h2o_timer_unlink(&req->super._timeout);
    if (h2o_linklist_is_linked(&req->link))
        h2o_linklist_unlink(&req->link);
    free(req);
}
