
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * write; } ;
struct TYPE_11__ {TYPE_3__* ssl; TYPE_1__ _cb; } ;
typedef TYPE_4__ h2o_socket_t ;
typedef int (* h2o_socket_cb ) (TYPE_4__*,char const*) ;
struct TYPE_9__ {int (* cb ) (TYPE_4__*,char const*) ;} ;
struct TYPE_10__ {int record_overhead; TYPE_2__ handshake; int ossl; int * ptls; } ;
typedef int SSL_CIPHER ;


 int SSL_CIPHER_get_id (int const*) ;
 int * SSL_get_current_cipher (int ) ;
 int decode_ssl_input (TYPE_4__*) ;
 int ptls_get_record_overhead (int *) ;

__attribute__((used)) static void on_handshake_complete(h2o_socket_t *sock, const char *err)
{
    if (err == ((void*)0)) {
        if (sock->ssl->ptls != ((void*)0)) {
            sock->ssl->record_overhead = ptls_get_record_overhead(sock->ssl->ptls);
        } else {
            const SSL_CIPHER *cipher = SSL_get_current_cipher(sock->ssl->ossl);
            switch (SSL_CIPHER_get_id(cipher)) {
            case 129:
            case 137:
            case 131:
            case 134:
            case 128:
            case 136:
            case 130:
            case 133:
                sock->ssl->record_overhead = 5 + 8 + 16 ;
                break;

            case 138:
            case 132:
            case 135:
                sock->ssl->record_overhead = 5 + 16 ;
                break;

            default:
                sock->ssl->record_overhead = 32;
                break;
            }
        }
    }

    h2o_socket_cb handshake_cb = sock->ssl->handshake.cb;
    sock->_cb.write = ((void*)0);
    sock->ssl->handshake.cb = ((void*)0);
    if (err == ((void*)0))
        decode_ssl_input(sock);
    handshake_cb(sock, err);
}
