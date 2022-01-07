
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_hook_meta {struct evhttp_connection* evcon; } ;
struct evhttp_connection {int dummy; } ;


 struct evrpc_hook_meta* evrpc_hook_meta_new_ () ;

__attribute__((used)) static void
evrpc_hook_associate_meta_(struct evrpc_hook_meta **pctx,
    struct evhttp_connection *evcon)
{
 struct evrpc_hook_meta *ctx = *pctx;
 if (ctx == ((void*)0))
  *pctx = ctx = evrpc_hook_meta_new_();
 ctx->evcon = evcon;
}
