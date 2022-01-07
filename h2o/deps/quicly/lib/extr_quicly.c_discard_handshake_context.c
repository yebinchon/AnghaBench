
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int quicly_sentmap_event_t ;
typedef int quicly_sent_t ;
typedef int quicly_sent_packet_t ;
struct TYPE_13__ {TYPE_4__* application; int handshake; } ;
typedef TYPE_5__ quicly_conn_t ;
struct TYPE_9__ {int * zero_rtt; } ;
struct TYPE_10__ {int ** aead; TYPE_1__ header_protection; } ;
struct TYPE_11__ {TYPE_2__ ingress; } ;
struct TYPE_12__ {TYPE_3__ cipher; } ;


 int QUICLY_EPOCH_HANDSHAKE ;



 int QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION ;
 int assert (int ) ;
 int destroy_handshake_flow (TYPE_5__*,int ) ;
 int free_handshake_space (int *) ;
 int ptls_aead_free (int *) ;
 int ptls_cipher_free (int *) ;
 int quicly_is_client (TYPE_5__*) ;

__attribute__((used)) static int discard_handshake_context(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                                     quicly_sentmap_event_t event)
{
    switch (event) {
    case 130:
        return QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION;
    case 128:
        break;
    case 129:

        destroy_handshake_flow(conn, QUICLY_EPOCH_HANDSHAKE);
        free_handshake_space(&conn->handshake);

        if (!quicly_is_client(conn) && conn->application->cipher.ingress.header_protection.zero_rtt != ((void*)0)) {
            assert(conn->application->cipher.ingress.aead[0] != ((void*)0));
            ptls_cipher_free(conn->application->cipher.ingress.header_protection.zero_rtt);
            conn->application->cipher.ingress.header_protection.zero_rtt = ((void*)0);
            ptls_aead_free(conn->application->cipher.ingress.aead[0]);
            conn->application->cipher.ingress.aead[0] = ((void*)0);
        }
        break;
    }
    return 0;
}
