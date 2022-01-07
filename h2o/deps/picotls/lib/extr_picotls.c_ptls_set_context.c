
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; } ;
typedef TYPE_1__ ptls_t ;
typedef int ptls_context_t ;


 int update_open_count (int *,int) ;

void ptls_set_context(ptls_t *tls, ptls_context_t *ctx)
{
    update_open_count(ctx, 1);
    update_open_count(tls->ctx, -1);
    tls->ctx = ctx;
}
