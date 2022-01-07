
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dec; } ;
struct st_quic_keyset_t {TYPE_1__ address_token; } ;
typedef int quicly_address_token_plaintext_t ;
struct TYPE_5__ {int len; int * base; } ;
typedef TYPE_2__ ptls_iovec_t ;


 int PTLS_ERROR_INCOMPATIBLE_KEY ;
 struct st_quic_keyset_t* find_keyset (int ) ;
 int quicly_decrypt_address_token (int ,int *,int *,int ,int) ;
 int update_quic_keys () ;

int quic_decrypt_address_token(quicly_address_token_plaintext_t *pt, ptls_iovec_t input)
{
    struct st_quic_keyset_t *keyset;

    update_quic_keys();

    if ((keyset = find_keyset(input.base[0])) == ((void*)0))
        return PTLS_ERROR_INCOMPATIBLE_KEY;
    return quicly_decrypt_address_token(keyset->address_token.dec, pt, input.base, input.len, 1);
}
