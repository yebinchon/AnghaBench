
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int input_headers; } ;
struct evbuffer {int dummy; } ;


 int EVRPC_CONTINUE ;
 int assert (int) ;
 int evhttp_add_header (int ,char*,char*) ;
 char* evhttp_find_header (int ,char*) ;
 int evhttp_remove_header (int ,char*) ;
 scalar_t__ evrpc_hook_find_meta (void*,char*,void**,size_t*) ;
 int * evrpc_hook_get_connection (void*) ;
 scalar_t__ strcmp (char const*,void*) ;

__attribute__((used)) static int
rpc_hook_remove_header(void *ctx, struct evhttp_request *req,
    struct evbuffer *evbuf, void *arg)
{
 const char *header = evhttp_find_header(req->input_headers, "X-Hook");
 void *data = ((void*)0);
 size_t data_len = 0;

 assert(header != ((void*)0));
 assert(strcmp(header, arg) == 0);

 evhttp_remove_header(req->input_headers, "X-Hook");
 evhttp_add_header(req->input_headers, "X-Pool-Hook", "ran");

 assert(evrpc_hook_find_meta(ctx, "meta", &data, &data_len) == 0);
 assert(data != ((void*)0));
 assert(data_len == 5);

 assert(evrpc_hook_get_connection(ctx) != ((void*)0));

 return (EVRPC_CONTINUE);
}
