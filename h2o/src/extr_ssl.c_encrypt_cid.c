
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_quic_keyset_t {int name; TYPE_2__* cid; } ;
struct TYPE_5__ {int len; int * cid; } ;
typedef TYPE_1__ quicly_cid_t ;
typedef int quicly_cid_plaintext_t ;
typedef int quicly_cid_encryptor_t ;
struct TYPE_6__ {int (* encrypt_cid ) (TYPE_2__*,TYPE_1__*,void*,int const*) ;} ;


 int assert (int) ;
 int memcpy (int *,int *,int) ;
 int stub1 (TYPE_2__*,TYPE_1__*,void*,int const*) ;
 struct st_quic_keyset_t* update_quic_keys () ;

__attribute__((used)) static void encrypt_cid(quicly_cid_encryptor_t *self, quicly_cid_t *encrypted, void *stateless_reset_token,
                        const quicly_cid_plaintext_t *plaintext)
{
    struct st_quic_keyset_t *keyset = update_quic_keys();
    quicly_cid_t tmp_cid;

    keyset->cid->encrypt_cid(keyset->cid, &tmp_cid, stateless_reset_token, plaintext);
    assert(tmp_cid.len < sizeof(tmp_cid.cid));
    encrypted->cid[0] = keyset->name;
    memcpy(encrypted->cid + 1, tmp_cid.cid, tmp_cid.len);
    encrypted->len = tmp_cid.len + 1;
}
