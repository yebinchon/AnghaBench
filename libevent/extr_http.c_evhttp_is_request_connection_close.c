
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int output_headers; int flags; int input_headers; } ;


 scalar_t__ evhttp_is_connection_close (int ,int ) ;

__attribute__((used)) static int
evhttp_is_request_connection_close(struct evhttp_request *req)
{
 return
  evhttp_is_connection_close(req->flags, req->input_headers) ||
  evhttp_is_connection_close(req->flags, req->output_headers);
}
