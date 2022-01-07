
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct st_quic_keyset_t {TYPE_1__* cid; } ;
typedef int quicly_cid_encryptor_t ;
struct TYPE_2__ {int (* generate_stateless_reset_token ) (TYPE_1__*,void*,int const*) ;} ;


 struct st_quic_keyset_t* find_keyset (int const) ;
 int stub1 (TYPE_1__*,void*,int const*) ;
 int update_quic_keys () ;

__attribute__((used)) static int generate_stateless_reset_token(quicly_cid_encryptor_t *self, void *token, const void *_encrypted)
{
    const uint8_t *encrypted = _encrypted;
    struct st_quic_keyset_t *keyset;

    update_quic_keys();

    if ((keyset = find_keyset(encrypted[0])) == ((void*)0))
        return 0;
    return keyset->cid->generate_stateless_reset_token(keyset->cid, token, encrypted + 1);
}
