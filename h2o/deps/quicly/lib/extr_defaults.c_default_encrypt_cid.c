
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct st_quicly_default_encrypt_cid_t {TYPE_4__* cid_encrypt_ctx; } ;
struct TYPE_8__ {int len; int cid; } ;
typedef TYPE_2__ quicly_cid_t ;
struct TYPE_9__ {int master_id; int thread_id; int path_id; int node_id; } ;
typedef TYPE_3__ quicly_cid_plaintext_t ;
typedef int quicly_cid_encryptor_t ;
struct TYPE_10__ {TYPE_1__* algo; } ;
struct TYPE_7__ {int block_size; } ;


 int assert (int) ;
 int generate_reset_token (struct st_quicly_default_encrypt_cid_t*,void*,int ) ;
 int ptls_cipher_encrypt (TYPE_4__*,int ,int *,int) ;
 int * quicly_encode32 (int *,int) ;
 int * quicly_encode64 (int *,int ) ;

__attribute__((used)) static void default_encrypt_cid(quicly_cid_encryptor_t *_self, quicly_cid_t *encrypted, void *reset_token,
                                const quicly_cid_plaintext_t *plaintext)
{
    struct st_quicly_default_encrypt_cid_t *self = (void *)_self;
    uint8_t buf[16], *p;


    p = buf;
    switch (self->cid_encrypt_ctx->algo->block_size) {
    case 8:
        break;
    case 16:
        p = quicly_encode64(p, plaintext->node_id);
        break;
    default:
        assert(!"unexpected block size");
        break;
    }
    p = quicly_encode32(p, plaintext->master_id);
    p = quicly_encode32(p, (plaintext->thread_id << 8) | plaintext->path_id);
    assert(p - buf == self->cid_encrypt_ctx->algo->block_size);


    ptls_cipher_encrypt(self->cid_encrypt_ctx, encrypted->cid, buf, self->cid_encrypt_ctx->algo->block_size);
    encrypted->len = self->cid_encrypt_ctx->algo->block_size;


    if (reset_token != ((void*)0))
        generate_reset_token(self, reset_token, encrypted->cid);
}
