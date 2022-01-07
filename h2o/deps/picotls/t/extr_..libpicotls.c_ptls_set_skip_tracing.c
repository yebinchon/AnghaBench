
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skip_tracing; } ;
typedef TYPE_1__ ptls_t ;



void ptls_set_skip_tracing(ptls_t *tls, int skip_tracing)
{
    tls->skip_tracing = skip_tracing;
}
