
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
struct st_quicly_default_encrypt_cid_t {TYPE_3__* cid_decrypt_ctx; } ;
struct TYPE_6__ {int path_id; int thread_id; int master_id; int node_id; } ;
typedef TYPE_2__ quicly_cid_plaintext_t ;
typedef int quicly_cid_encryptor_t ;
struct TYPE_7__ {TYPE_1__* algo; } ;
struct TYPE_5__ {size_t block_size; } ;


 int assert (int) ;
 int memcpy (int const*,void const*,size_t) ;
 int memset (int const*,int ,size_t) ;
 int ptls_cipher_encrypt (TYPE_3__*,int const*,void const*,size_t) ;
 int quicly_decode24 (int const**) ;
 int quicly_decode32 (int const**) ;
 int quicly_decode64 (int const**) ;

__attribute__((used)) static size_t default_decrypt_cid(quicly_cid_encryptor_t *_self, quicly_cid_plaintext_t *plaintext, const void *encrypted,
                                  size_t len)
{
    struct st_quicly_default_encrypt_cid_t *self = (void *)_self;
    uint8_t ptbuf[16], tmpbuf[16];
    const uint8_t *p;
    size_t cid_len;

    cid_len = self->cid_decrypt_ctx->algo->block_size;


    if (len != 0 && len != cid_len) {
        if (len > cid_len)
            len = cid_len;
        memcpy(tmpbuf, encrypted, cid_len);
        if (len < cid_len)
            memset(tmpbuf + len, 0, cid_len - len);
        encrypted = tmpbuf;
    }


    ptls_cipher_encrypt(self->cid_decrypt_ctx, ptbuf, encrypted, cid_len);


    p = ptbuf;
    if (cid_len == 16) {
        plaintext->node_id = quicly_decode64(&p);
    } else {
        plaintext->node_id = 0;
    }
    plaintext->master_id = quicly_decode32(&p);
    plaintext->thread_id = quicly_decode24(&p);
    plaintext->path_id = *p++;
    assert(p - ptbuf == cid_len);

    return cid_len;
}
