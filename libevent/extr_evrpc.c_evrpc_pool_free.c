
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {int output_hooks; int input_hooks; int connections; int paused_requests; int requests; } ;
struct evrpc_pool {int output_hooks; int input_hooks; int connections; int paused_requests; int requests; } ;
struct evrpc_hook_ctx {int output_hooks; int input_hooks; int connections; int paused_requests; int requests; } ;
struct evrpc_hook {int dummy; } ;
struct evhttp_connection {int output_hooks; int input_hooks; int connections; int paused_requests; int requests; } ;


 int EVRPC_INPUT ;
 int EVRPC_OUTPUT ;
 int EVUTIL_ASSERT (int) ;
 void* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evrpc_request_wrapper*,int ) ;
 int evhttp_connection_free (struct evrpc_request_wrapper*) ;
 int evrpc_remove_hook (struct evrpc_request_wrapper*,int ,struct evrpc_hook*) ;
 int evrpc_request_wrapper_free (struct evrpc_request_wrapper*) ;
 int mm_free (struct evrpc_request_wrapper*) ;
 int next ;

void
evrpc_pool_free(struct evrpc_pool *pool)
{
 struct evhttp_connection *connection;
 struct evrpc_request_wrapper *request;
 struct evrpc_hook_ctx *pause;
 struct evrpc_hook *hook;
 int r;

 while ((request = TAILQ_FIRST(&pool->requests)) != ((void*)0)) {
  TAILQ_REMOVE(&pool->requests, request, next);
  evrpc_request_wrapper_free(request);
 }

 while ((pause = TAILQ_FIRST(&pool->paused_requests)) != ((void*)0)) {
  TAILQ_REMOVE(&pool->paused_requests, pause, next);
  mm_free(pause);
 }

 while ((connection = TAILQ_FIRST(&pool->connections)) != ((void*)0)) {
  TAILQ_REMOVE(&pool->connections, connection, next);
  evhttp_connection_free(connection);
 }

 while ((hook = TAILQ_FIRST(&pool->input_hooks)) != ((void*)0)) {
  r = evrpc_remove_hook(pool, EVRPC_INPUT, hook);
  EVUTIL_ASSERT(r);
 }

 while ((hook = TAILQ_FIRST(&pool->output_hooks)) != ((void*)0)) {
  r = evrpc_remove_hook(pool, EVRPC_OUTPUT, hook);
  EVUTIL_ASSERT(r);
 }

 mm_free(pool);
}
