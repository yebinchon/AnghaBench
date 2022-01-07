
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * application; } ;
typedef TYPE_1__ quicly_conn_t ;



int quicly_connection_is_ready(quicly_conn_t *conn)
{
    return conn->application != ((void*)0);
}
