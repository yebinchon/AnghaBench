
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {struct evhttp_connection* evcon; } ;
struct evhttp_connection {int dummy; } ;



struct evhttp_connection *
evhttp_request_get_connection(struct evhttp_request *req)
{
 return req->evcon;
}
