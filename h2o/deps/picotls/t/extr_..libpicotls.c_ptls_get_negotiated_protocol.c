
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* negotiated_protocol; } ;
typedef TYPE_1__ ptls_t ;



const char *ptls_get_negotiated_protocol(ptls_t *tls)
{
    return tls->negotiated_protocol;
}
