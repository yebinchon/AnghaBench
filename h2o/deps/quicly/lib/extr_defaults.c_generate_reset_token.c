
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct st_quicly_default_encrypt_cid_t {TYPE_4__* reset_token_ctx; TYPE_1__* cid_encrypt_ctx; } ;
typedef int expandbuf ;
struct TYPE_8__ {TYPE_2__* algo; } ;
struct TYPE_7__ {int block_size; } ;
struct TYPE_6__ {int block_size; } ;
struct TYPE_5__ {TYPE_3__* algo; } ;


 int QUICLY_STATELESS_RESET_TOKEN_LEN ;
 int assert (int) ;
 int memcpy (int *,void const*,int) ;
 int memset (int *,int ,int) ;
 int ptls_cipher_encrypt (TYPE_4__*,void*,void const*,int) ;

__attribute__((used)) static void generate_reset_token(struct st_quicly_default_encrypt_cid_t *self, void *token, const void *cid)
{
    uint8_t expandbuf[QUICLY_STATELESS_RESET_TOKEN_LEN];

    assert(self->reset_token_ctx->algo->block_size == QUICLY_STATELESS_RESET_TOKEN_LEN);


    if (self->cid_encrypt_ctx->algo->block_size != QUICLY_STATELESS_RESET_TOKEN_LEN) {
        assert(self->cid_encrypt_ctx->algo->block_size < QUICLY_STATELESS_RESET_TOKEN_LEN);
        memset(expandbuf, 0, sizeof(expandbuf));
        memcpy(expandbuf, cid, self->cid_encrypt_ctx->algo->block_size);
        cid = expandbuf;
    }


    ptls_cipher_encrypt(self->reset_token_ctx, token, cid, QUICLY_STATELESS_RESET_TOKEN_LEN);
}
