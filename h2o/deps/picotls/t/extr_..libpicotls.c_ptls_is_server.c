
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_server; } ;
typedef TYPE_1__ ptls_t ;



int ptls_is_server(ptls_t *tls)
{
    return tls->is_server;
}
