
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dec; int * enc; } ;
struct st_quic_keyset_t {TYPE_1__ address_token; int * cid; } ;


 int ptls_aead_free (int *) ;
 int quicly_free_default_cid_encryptor (int *) ;

__attribute__((used)) static void dispose_keyset(struct st_quic_keyset_t *keyset)
{
    quicly_free_default_cid_encryptor(keyset->cid);
    keyset->cid = ((void*)0);
    ptls_aead_free(keyset->address_token.enc);
    keyset->address_token.enc = ((void*)0);
    ptls_aead_free(keyset->address_token.dec);
    keyset->address_token.dec = ((void*)0);
}
