
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_base {struct evhttp* http_server; int paused_requests; int output_hooks; int input_hooks; int registered_rpcs; } ;
struct evhttp {int dummy; } ;


 int TAILQ_INIT (int *) ;
 int evtag_init () ;
 struct evrpc_base* mm_calloc (int,int) ;

struct evrpc_base *
evrpc_init(struct evhttp *http_server)
{
 struct evrpc_base* base = mm_calloc(1, sizeof(struct evrpc_base));
 if (base == ((void*)0))
  return (((void*)0));


 evtag_init();

 TAILQ_INIT(&base->registered_rpcs);
 TAILQ_INIT(&base->input_hooks);
 TAILQ_INIT(&base->output_hooks);

 TAILQ_INIT(&base->paused_requests);

 base->http_server = http_server;

 return (base);
}
