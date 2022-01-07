
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_base {int dummy; } ;
struct evhttp {int dummy; } ;
typedef int ev_uint16_t ;


 int EVRPC_REGISTER (struct evrpc_base*,int ,int ,int ,int ,int *) ;
 int Message ;
 int MessageCb ;
 int NeverReply ;
 int NeverReplyCb ;
 struct evrpc_base* evrpc_init (struct evhttp*) ;
 struct evhttp* http_setup (int *) ;
 int kill ;
 int msg ;
 scalar_t__ need_input_hook ;
 scalar_t__ need_output_hook ;

__attribute__((used)) static void
rpc_setup(struct evhttp **phttp, ev_uint16_t *pport, struct evrpc_base **pbase)
{
 ev_uint16_t port;
 struct evhttp *http = ((void*)0);
 struct evrpc_base *base = ((void*)0);

 http = http_setup(&port);
 base = evrpc_init(http);

 EVRPC_REGISTER(base, Message, msg, kill, MessageCb, ((void*)0));
 EVRPC_REGISTER(base, NeverReply, msg, kill, NeverReplyCb, ((void*)0));

 *phttp = http;
 *pport = port;
 *pbase = base;

 need_input_hook = 0;
 need_output_hook = 0;
}
