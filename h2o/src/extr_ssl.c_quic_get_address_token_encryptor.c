
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * enc; } ;
struct st_quic_keyset_t {TYPE_1__ address_token; int name; } ;
typedef int ptls_aead_context_t ;


 struct st_quic_keyset_t* update_quic_keys () ;

ptls_aead_context_t *quic_get_address_token_encryptor(uint8_t *prefix)
{
    struct st_quic_keyset_t *keyset = update_quic_keys();
    *prefix = keyset->name;
    return keyset->address_token.enc;
}
