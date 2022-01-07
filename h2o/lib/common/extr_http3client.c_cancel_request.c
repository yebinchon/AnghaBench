
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http3client_req_t {int * quic; } ;
typedef int h2o_httpclient_t ;


 int H2O_HTTP3_ERROR_REQUEST_CANCELLED ;
 int close_stream (struct st_h2o_http3client_req_t*,int ) ;
 int destroy_request (struct st_h2o_http3client_req_t*) ;

__attribute__((used)) static void cancel_request(h2o_httpclient_t *_client)
{
    struct st_h2o_http3client_req_t *req = (void *)_client;
    if (req->quic != ((void*)0))
        close_stream(req, H2O_HTTP3_ERROR_REQUEST_CANCELLED);
    destroy_request(req);
}
