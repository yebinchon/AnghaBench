
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct st_quicly_handshake_space_t {int dummy; } ;
struct TYPE_4__ {struct st_quicly_handshake_space_t* handshake; struct st_quicly_handshake_space_t* initial; } ;
typedef TYPE_1__ quicly_conn_t ;


 int PTLS_ERROR_NO_MEMORY ;
 size_t QUICLY_EPOCH_INITIAL ;
 scalar_t__ alloc_pn_space (int) ;
 int create_handshake_flow (TYPE_1__*,size_t) ;

__attribute__((used)) static int setup_handshake_space_and_flow(quicly_conn_t *conn, size_t epoch)
{
    struct st_quicly_handshake_space_t **space = epoch == QUICLY_EPOCH_INITIAL ? &conn->initial : &conn->handshake;
    if ((*space = (void *)alloc_pn_space(sizeof(struct st_quicly_handshake_space_t))) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    return create_handshake_flow(conn, epoch);
}
