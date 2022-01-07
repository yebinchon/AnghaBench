
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evrpc_req_generic {int hook_meta; int * rpc_data; struct evhttp_request* http_req; struct evrpc* rpc; } ;
struct evrpc {TYPE_1__* base; } ;
struct evhttp_request {scalar_t__ type; int input_buffer; int evcon; } ;
struct TYPE_2__ {int input_hooks; } ;


 scalar_t__ EVHTTP_REQ_POST ;



 int EVUTIL_ASSERT (int) ;
 int HTTP_SERVUNAVAIL ;
 int * TAILQ_FIRST (int *) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int evhttp_send_error (struct evhttp_request*,int ,int *) ;
 int evrpc_hook_associate_meta_ (int *,int ) ;
 int evrpc_pause_request (TYPE_1__*,struct evrpc_req_generic*,int (*) (struct evrpc_req_generic*,int const)) ;
 int evrpc_process_hooks (int *,struct evrpc_req_generic*,struct evhttp_request*,int ) ;
 int evrpc_reqstate_free_ (struct evrpc_req_generic*) ;
 int evrpc_request_cb_closure (struct evrpc_req_generic*,int const) ;
 struct evrpc_req_generic* mm_calloc (int,int) ;

__attribute__((used)) static void
evrpc_request_cb(struct evhttp_request *req, void *arg)
{
 struct evrpc *rpc = arg;
 struct evrpc_req_generic *rpc_state = ((void*)0);


 if (req->type != EVHTTP_REQ_POST ||
     evbuffer_get_length(req->input_buffer) <= 0)
  goto error;

 rpc_state = mm_calloc(1, sizeof(struct evrpc_req_generic));
 if (rpc_state == ((void*)0))
  goto error;
 rpc_state->rpc = rpc;
 rpc_state->http_req = req;
 rpc_state->rpc_data = ((void*)0);

 if (TAILQ_FIRST(&rpc->base->input_hooks) != ((void*)0)) {
  int hook_res;

  evrpc_hook_associate_meta_(&rpc_state->hook_meta, req->evcon);




  hook_res = evrpc_process_hooks(&rpc->base->input_hooks,
      rpc_state, req, req->input_buffer);
  switch (hook_res) {
  case 128:
   goto error;
  case 129:
   evrpc_pause_request(rpc->base, rpc_state,
       evrpc_request_cb_closure);
   return;
  case 130:
   break;
  default:
   EVUTIL_ASSERT(hook_res == 128 ||
       hook_res == 130 ||
       hook_res == 129);
  }
 }

 evrpc_request_cb_closure(rpc_state, 130);
 return;

error:
 if (rpc_state)
  evrpc_reqstate_free_(rpc_state);
 evhttp_send_error(req, HTTP_SERVUNAVAIL, ((void*)0));
 return;
}
