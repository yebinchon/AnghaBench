
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tr2tls_thread_ctx {int nr_open_regions; TYPE_1__ thread_name; } ;


 int BUG (char*,int ) ;
 struct tr2tls_thread_ctx* tr2tls_get_self () ;

void tr2tls_pop_self(void)
{
 struct tr2tls_thread_ctx *ctx = tr2tls_get_self();

 if (!ctx->nr_open_regions)
  BUG("no open regions in thread '%s'", ctx->thread_name.buf);

 ctx->nr_open_regions--;
}
