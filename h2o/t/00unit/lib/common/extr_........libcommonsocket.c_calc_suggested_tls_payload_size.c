
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {scalar_t__ record_overhead; } ;



__attribute__((used)) static uint16_t calc_suggested_tls_payload_size(h2o_socket_t *sock, uint16_t suggested_tls_record_size)
{
    uint16_t ps = suggested_tls_record_size;
    if (sock->ssl != ((void*)0) && sock->ssl->record_overhead < ps)
        ps -= sock->ssl->record_overhead;
    return ps;
}
