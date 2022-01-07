
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 int EVRPC_CONTINUE ;
 int assert (int ) ;
 int evrpc_hook_add_meta (void*,char*,char*,int) ;
 int * evrpc_hook_get_connection (void*) ;

__attribute__((used)) static int
rpc_hook_add_meta(void *ctx, struct evhttp_request *req,
    struct evbuffer *evbuf, void *arg)
{
 evrpc_hook_add_meta(ctx, "meta", "test", 5);

 assert(evrpc_hook_get_connection(ctx) != ((void*)0));

 return (EVRPC_CONTINUE);
}
