
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_req_generic {int rpc_data; struct evhttp_request* http_req; } ;
struct evhttp_request {int output_headers; } ;
typedef enum EVRPC_HOOK_RESULT { ____Placeholder_EVRPC_HOOK_RESULT } EVRPC_HOOK_RESULT ;


 int EVRPC_TERMINATE ;
 int EVUTIL_ASSERT (struct evrpc_req_generic*) ;
 int HTTP_OK ;
 int HTTP_SERVUNAVAIL ;
 int evhttp_add_header (int ,char*,char*) ;
 int * evhttp_find_header (int ,char*) ;
 int evhttp_send_error (struct evhttp_request*,int ,int *) ;
 int evhttp_send_reply (struct evhttp_request*,int ,char*,int ) ;
 int evrpc_reqstate_free_ (struct evrpc_req_generic*) ;

__attribute__((used)) static void
evrpc_request_done_closure(void *arg, enum EVRPC_HOOK_RESULT hook_res)
{
 struct evrpc_req_generic *rpc_state = arg;
 struct evhttp_request *req;
 EVUTIL_ASSERT(rpc_state);
 req = rpc_state->http_req;

 if (hook_res == EVRPC_TERMINATE)
  goto error;


 if (evhttp_find_header(req->output_headers, "Content-Type") == ((void*)0)) {
  evhttp_add_header(req->output_headers,
      "Content-Type", "application/octet-stream");
 }
 evhttp_send_reply(req, HTTP_OK, "OK", rpc_state->rpc_data);

 evrpc_reqstate_free_(rpc_state);

 return;

error:
 evrpc_reqstate_free_(rpc_state);
 evhttp_send_error(req, HTTP_SERVUNAVAIL, ((void*)0));
 return;
}
