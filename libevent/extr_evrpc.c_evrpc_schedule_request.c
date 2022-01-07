
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_status {int error; } ;
struct evrpc_request_wrapper {int cb_arg; int reply; int request; int (* cb ) (struct evrpc_status*,int ,int ,int ) ;int hook_meta; struct evhttp_request* req; struct evhttp_connection* evcon; int (* request_marshal ) (int ,int ) ;struct evrpc_pool* pool; } ;
struct evrpc_pool {int output_hooks; } ;
struct evhttp_request {int output_buffer; } ;
struct evhttp_connection {int dummy; } ;
typedef int status ;




 int EVRPC_STATUS_ERR_UNSTARTED ;

 int EVUTIL_ASSERT (int) ;
 int * TAILQ_FIRST (int *) ;
 struct evhttp_request* evhttp_request_new (int ,struct evrpc_request_wrapper*) ;
 int evrpc_hook_associate_meta_ (int *,struct evhttp_connection*) ;
 int evrpc_pause_request (struct evrpc_pool*,struct evrpc_request_wrapper*,int (*) (struct evrpc_request_wrapper*,int const)) ;
 int evrpc_process_hooks (int *,struct evrpc_request_wrapper*,struct evhttp_request*,int ) ;
 int evrpc_reply_done ;
 int evrpc_request_wrapper_free (struct evrpc_request_wrapper*) ;
 int evrpc_schedule_request_closure (struct evrpc_request_wrapper*,int const) ;
 int memset (struct evrpc_status*,int ,int) ;
 int stub1 (int ,int ) ;
 int stub2 (struct evrpc_status*,int ,int ,int ) ;

__attribute__((used)) static int
evrpc_schedule_request(struct evhttp_connection *connection,
    struct evrpc_request_wrapper *ctx)
{
 struct evhttp_request *req = ((void*)0);
 struct evrpc_pool *pool = ctx->pool;
 struct evrpc_status status;

 if ((req = evhttp_request_new(evrpc_reply_done, ctx)) == ((void*)0))
  goto error;


 ctx->request_marshal(req->output_buffer, ctx->request);


 ctx->evcon = connection;


 ctx->req = req;

 if (TAILQ_FIRST(&pool->output_hooks) != ((void*)0)) {
  int hook_res;

  evrpc_hook_associate_meta_(&ctx->hook_meta, connection);


  hook_res = evrpc_process_hooks(&pool->output_hooks,
      ctx, req, req->output_buffer);

  switch (hook_res) {
  case 128:
   goto error;
  case 129:

   if (evrpc_pause_request(pool, ctx,
    evrpc_schedule_request_closure) == -1)
    goto error;
   return (0);
  case 130:

   break;
  default:
   EVUTIL_ASSERT(hook_res == 128 ||
       hook_res == 130 ||
       hook_res == 129);
  }
 }

 evrpc_schedule_request_closure(ctx, 130);
 return (0);

error:
 memset(&status, 0, sizeof(status));
 status.error = EVRPC_STATUS_ERR_UNSTARTED;
 (*ctx->cb)(&status, ctx->request, ctx->reply, ctx->cb_arg);
 evrpc_request_wrapper_free(ctx);
 return (-1);
}
