
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_hook_ctx_ {int ctx; int vbase; } ;
typedef int evutil_socket_t ;


 int EVRPC_CONTINUE ;
 int evrpc_resume_request (int ,int ,int ) ;
 int free (void*) ;
 int hook_pause_cb_called ;

__attribute__((used)) static void
rpc_hook_pause_cb(evutil_socket_t fd, short what, void *arg)
{
 struct rpc_hook_ctx_ *ctx = arg;
 ++hook_pause_cb_called;
 evrpc_resume_request(ctx->vbase, ctx->ctx, EVRPC_CONTINUE);
 free(arg);
}
