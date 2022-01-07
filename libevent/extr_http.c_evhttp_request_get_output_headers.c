
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;
struct evhttp_request {struct evkeyvalq* output_headers; } ;



struct evkeyvalq *evhttp_request_get_output_headers(struct evhttp_request *req)
{
 return (req->output_headers);
}
