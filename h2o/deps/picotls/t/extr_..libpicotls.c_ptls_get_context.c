
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; } ;
typedef TYPE_1__ ptls_t ;
typedef int ptls_context_t ;



ptls_context_t *ptls_get_context(ptls_t *tls)
{
    return tls->ctx;
}
