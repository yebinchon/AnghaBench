
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int initial; } ;
typedef TYPE_1__ quicly_conn_t ;


 unsigned int QUICLY_EPOCH_INITIAL ;
 int destroy_handshake_flow (TYPE_1__*,unsigned int) ;
 int discard_sentmap_by_epoch (TYPE_1__*,unsigned int) ;
 int free_handshake_space (int *) ;

__attribute__((used)) static int discard_initial_context(quicly_conn_t *conn)
{
    int ret;

    if ((ret = discard_sentmap_by_epoch(conn, 1u << QUICLY_EPOCH_INITIAL)) != 0)
        return ret;
    destroy_handshake_flow(conn, QUICLY_EPOCH_INITIAL);
    free_handshake_space(&conn->initial);

    return 0;
}
