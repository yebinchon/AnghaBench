
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_hook_ctx {int output_hooks; int input_hooks; int paused_requests; int registered_rpcs; } ;
struct evrpc_hook {int dummy; } ;
struct evrpc_base {int output_hooks; int input_hooks; int paused_requests; int registered_rpcs; } ;
struct evrpc {int uri; } ;


 int EVRPC_INPUT ;
 int EVRPC_OUTPUT ;
 int EVUTIL_ASSERT (int) ;
 void* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evrpc_hook_ctx*,int ) ;
 int evrpc_remove_hook (struct evrpc_hook_ctx*,int ,struct evrpc_hook*) ;
 int evrpc_unregister_rpc (struct evrpc_hook_ctx*,int ) ;
 int mm_free (struct evrpc_hook_ctx*) ;
 int next ;

void
evrpc_free(struct evrpc_base *base)
{
 struct evrpc *rpc;
 struct evrpc_hook *hook;
 struct evrpc_hook_ctx *pause;
 int r;

 while ((rpc = TAILQ_FIRST(&base->registered_rpcs)) != ((void*)0)) {
  r = evrpc_unregister_rpc(base, rpc->uri);
  EVUTIL_ASSERT(r == 0);
 }
 while ((pause = TAILQ_FIRST(&base->paused_requests)) != ((void*)0)) {
  TAILQ_REMOVE(&base->paused_requests, pause, next);
  mm_free(pause);
 }
 while ((hook = TAILQ_FIRST(&base->input_hooks)) != ((void*)0)) {
  r = evrpc_remove_hook(base, EVRPC_INPUT, hook);
  EVUTIL_ASSERT(r);
 }
 while ((hook = TAILQ_FIRST(&base->output_hooks)) != ((void*)0)) {
  r = evrpc_remove_hook(base, EVRPC_OUTPUT, hook);
  EVUTIL_ASSERT(r);
 }
 mm_free(base);
}
