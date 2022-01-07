
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_http3client_req_t {int dummy; } ;
struct TYPE_3__ {struct st_h2o_http3client_req_t* data; } ;
typedef TYPE_1__ quicly_stream_t ;


 int H2O_HTTP3_ERROR_REQUEST_CANCELLED ;
 int close_stream (struct st_h2o_http3client_req_t*,int ) ;
 int destroy_request (struct st_h2o_http3client_req_t*) ;
 int handle_input_error (struct st_h2o_http3client_req_t*,int) ;

__attribute__((used)) static int on_send_stop(quicly_stream_t *qs, int err)
{
    struct st_h2o_http3client_req_t *req;

    if ((req = qs->data) == ((void*)0))
        return 0;
    handle_input_error(req, err);
    close_stream(req, H2O_HTTP3_ERROR_REQUEST_CANCELLED);
    destroy_request(req);

    return 0;
}
