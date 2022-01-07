
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {struct evbuffer* input_buffer; } ;
struct evbuffer {int dummy; } ;



struct evbuffer *evhttp_request_get_input_buffer(struct evhttp_request *req)
{
 return (req->input_buffer);
}
