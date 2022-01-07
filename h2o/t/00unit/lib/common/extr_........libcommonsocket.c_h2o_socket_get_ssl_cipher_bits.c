
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* aead; } ;
typedef TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_10__ {TYPE_2__* ssl; } ;
typedef TYPE_4__ h2o_socket_t ;
struct TYPE_8__ {int * ossl; int * ptls; } ;
struct TYPE_7__ {scalar_t__ key_size; } ;


 int SSL_get_cipher_bits (int *,int *) ;
 TYPE_3__* ptls_get_cipher (int *) ;

int h2o_socket_get_ssl_cipher_bits(h2o_socket_t *sock)
{
    if (sock->ssl != ((void*)0)) {
        if (sock->ssl->ptls != ((void*)0)) {
            ptls_cipher_suite_t *cipher = ptls_get_cipher(sock->ssl->ptls);
            if (cipher == ((void*)0))
                return 0;
            return (int)cipher->aead->key_size;
        } else if (sock->ssl->ossl != ((void*)0)) {
            return SSL_get_cipher_bits(sock->ssl->ossl, ((void*)0));
        }
    }
    return 0;
}
