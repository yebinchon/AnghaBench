
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_handle_payload_state_t {int dummy; } ;
typedef int quicly_conn_t ;


 int QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION ;

__attribute__((used)) static int handle_retire_connection_id_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    return QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION;
}
