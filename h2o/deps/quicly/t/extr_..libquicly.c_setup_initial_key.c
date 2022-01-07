
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct st_quicly_cipher_context_t {int aead; int header_protection; } ;
struct TYPE_5__ {TYPE_3__* hash; int aead; } ;
typedef TYPE_1__ ptls_cipher_suite_t ;
typedef int aead_secret ;
struct TYPE_6__ {int digest_size; } ;


 int PTLS_MAX_DIGEST_SIZE ;
 int ptls_clear_memory (int *,int) ;
 int ptls_hkdf_expand_label (TYPE_3__*,int *,int ,int ,char const*,int ,int *) ;
 int ptls_iovec_init (void const*,int ) ;
 int setup_cipher (int *,int *,int ,TYPE_3__*,int,int *) ;

__attribute__((used)) static int setup_initial_key(struct st_quicly_cipher_context_t *ctx, ptls_cipher_suite_t *cs, const void *master_secret,
                             const char *label, int is_enc)
{
    uint8_t aead_secret[PTLS_MAX_DIGEST_SIZE];
    int ret;

    if ((ret = ptls_hkdf_expand_label(cs->hash, aead_secret, cs->hash->digest_size,
                                      ptls_iovec_init(master_secret, cs->hash->digest_size), label, ptls_iovec_init(((void*)0), 0),
                                      ((void*)0))) != 0)
        goto Exit;
    if ((ret = setup_cipher(&ctx->header_protection, &ctx->aead, cs->aead, cs->hash, is_enc, aead_secret)) != 0)
        goto Exit;

Exit:
    ptls_clear_memory(aead_secret, sizeof(aead_secret));
    return ret;
}
