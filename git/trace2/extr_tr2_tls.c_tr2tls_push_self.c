
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tr2tls_thread_ctx {scalar_t__ nr_open_regions; int * array_us_start; int alloc; } ;


 int ALLOC_GROW (int *,scalar_t__,int ) ;
 struct tr2tls_thread_ctx* tr2tls_get_self () ;

void tr2tls_push_self(uint64_t us_now)
{
 struct tr2tls_thread_ctx *ctx = tr2tls_get_self();

 ALLOC_GROW(ctx->array_us_start, ctx->nr_open_regions + 1, ctx->alloc);
 ctx->array_us_start[ctx->nr_open_regions++] = us_now;
}
