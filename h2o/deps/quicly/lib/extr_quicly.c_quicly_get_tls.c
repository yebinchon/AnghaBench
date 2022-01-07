
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tls; } ;
struct TYPE_5__ {TYPE_1__ crypto; } ;
typedef TYPE_2__ quicly_conn_t ;
typedef int ptls_t ;



ptls_t *quicly_get_tls(quicly_conn_t *conn)
{
    return conn->crypto.tls;
}
