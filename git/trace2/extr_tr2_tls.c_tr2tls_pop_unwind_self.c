
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2tls_thread_ctx {int nr_open_regions; } ;


 struct tr2tls_thread_ctx* tr2tls_get_self () ;
 int tr2tls_pop_self () ;

void tr2tls_pop_unwind_self(void)
{
 struct tr2tls_thread_ctx *ctx = tr2tls_get_self();

 while (ctx->nr_open_regions > 1)
  tr2tls_pop_self();
}
