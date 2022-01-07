
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ len; scalar_t__ base; } ;
struct TYPE_13__ {int _is_stateless_reset_cached; TYPE_4__ octets; } ;
typedef TYPE_5__ quicly_decoded_packet_t ;
struct TYPE_9__ {int * token; } ;
struct TYPE_10__ {TYPE_1__ stateless_reset; } ;
struct TYPE_11__ {TYPE_2__ peer; } ;
struct TYPE_14__ {TYPE_3__ super; } ;
typedef TYPE_6__ quicly_conn_t ;


 scalar_t__ QUICLY_STATELESS_RESET_PACKET_MIN_LEN ;
 scalar_t__ QUICLY_STATELESS_RESET_TOKEN_LEN ;


 scalar_t__ memcmp (scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static int is_stateless_reset(quicly_conn_t *conn, quicly_decoded_packet_t *decoded)
{
    switch (decoded->_is_stateless_reset_cached) {
    case 129:
        return 1;
    case 128:
        return 0;
    default:
        break;
    }

    if (conn->super.peer.stateless_reset.token == ((void*)0))
        return 0;
    if (decoded->octets.len < QUICLY_STATELESS_RESET_PACKET_MIN_LEN)
        return 0;
    if (memcmp(decoded->octets.base + decoded->octets.len - QUICLY_STATELESS_RESET_TOKEN_LEN,
               conn->super.peer.stateless_reset.token, QUICLY_STATELESS_RESET_TOKEN_LEN) != 0)
        return 0;

    return 1;
}
