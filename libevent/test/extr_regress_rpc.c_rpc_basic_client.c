
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct kill {int dummy; } ;
struct evrpc_request_wrapper {int dummy; } ;
struct evrpc_pool {int dummy; } ;
typedef struct evrpc_pool evrpc_base ;
struct evhttp {int dummy; } ;
typedef int ev_uint16_t ;


 int EVRPC_INPUT ;
 struct evrpc_request_wrapper* EVRPC_MAKE_CTX (int ,struct msg*,struct kill*,struct evrpc_pool*,struct msg*,struct kill*,int ,int *) ;
 int EVRPC_MAKE_REQUEST (int ,struct evrpc_pool*,struct msg*,struct kill*,int ,int *) ;
 int EVRPC_OUTPUT ;
 int EVTAG_ASSIGN (struct msg*,int ,char*) ;
 int GotKillCb ;
 int Message ;
 int assert (int *) ;
 int event_dispatch () ;
 int evhttp_free (struct evhttp*) ;
 int * evrpc_add_hook (struct evrpc_pool*,int ,int ,void*) ;
 int evrpc_make_request (struct evrpc_request_wrapper*) ;
 int evrpc_pool_free (struct evrpc_pool*) ;
 int from_name ;
 int kill_clear (struct kill*) ;
 int kill_free (struct kill*) ;
 struct kill* kill_new () ;
 int msg_free (struct msg*) ;
 struct msg* msg_new () ;
 int need_input_hook ;
 int need_output_hook ;
 int rpc_hook_add_header ;
 int rpc_hook_add_meta ;
 int rpc_hook_remove_header ;
 struct evrpc_pool* rpc_pool_with_connection (int ) ;
 int rpc_setup (struct evhttp**,int *,struct evrpc_pool**) ;
 int rpc_teardown (struct evrpc_pool*) ;
 int test_ok ;
 int to_name ;
 int tt_assert (int) ;

__attribute__((used)) static void
rpc_basic_client(void)
{
 ev_uint16_t port;
 struct evhttp *http = ((void*)0);
 struct evrpc_base *base = ((void*)0);
 struct evrpc_pool *pool = ((void*)0);
 struct msg *msg = ((void*)0);
 struct kill *kill = ((void*)0);

 rpc_setup(&http, &port, &base);

 need_input_hook = 1;
 need_output_hook = 1;

 assert(evrpc_add_hook(base, EVRPC_INPUT, rpc_hook_add_header, (void*)"input")
     != ((void*)0));
 assert(evrpc_add_hook(base, EVRPC_OUTPUT, rpc_hook_add_header, (void*)"output")
     != ((void*)0));

 pool = rpc_pool_with_connection(port);
 tt_assert(pool);

 assert(evrpc_add_hook(pool, EVRPC_OUTPUT, rpc_hook_add_meta, ((void*)0)));
 assert(evrpc_add_hook(pool, EVRPC_INPUT, rpc_hook_remove_header, (void*)"output"));


 msg = msg_new();
 tt_assert(msg);
 EVTAG_ASSIGN(msg, from_name, "niels");
 EVTAG_ASSIGN(msg, to_name, "tester");

 kill = kill_new();

 EVRPC_MAKE_REQUEST(Message, pool, msg, kill, GotKillCb, ((void*)0));

 test_ok = 0;

 event_dispatch();

 tt_assert(test_ok == 1);


 kill_clear(kill);

 EVRPC_MAKE_REQUEST(Message, pool, msg, kill, GotKillCb, ((void*)0));

 event_dispatch();

 tt_assert(test_ok == 2);


 kill_clear(kill);

 {
  struct evrpc_request_wrapper *ctx =
      EVRPC_MAKE_CTX(Message, msg, kill,
   pool, msg, kill, GotKillCb, ((void*)0));
  evrpc_make_request(ctx);
 }

 event_dispatch();

 rpc_teardown(base);

 tt_assert(test_ok == 3);

end:
 if (msg)
  msg_free(msg);
 if (kill)
  kill_free(kill);

 if (pool)
  evrpc_pool_free(pool);
 if (http)
  evhttp_free(http);

 need_input_hook = 0;
 need_output_hook = 0;
}
