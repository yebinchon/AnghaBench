
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ ptls_t ;


 scalar_t__ PTLS_STATE_POST_HANDSHAKE_MIN ;

int ptls_handshake_is_complete(ptls_t *tls)
{
    return tls->state >= PTLS_STATE_POST_HANDSHAKE_MIN;
}
