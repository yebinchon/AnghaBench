
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct st_quicly_application_space_t {int dummy; } ;
struct TYPE_4__ {int * application; } ;
typedef TYPE_1__ quicly_conn_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int QUICLY_EPOCH_1RTT ;
 scalar_t__ alloc_pn_space (int) ;
 int create_handshake_flow (TYPE_1__*,int ) ;

__attribute__((used)) static int setup_application_space(quicly_conn_t *conn)
{
    if ((conn->application = (void *)alloc_pn_space(sizeof(struct st_quicly_application_space_t))) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    return create_handshake_flow(conn, QUICLY_EPOCH_1RTT);
}
