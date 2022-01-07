
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_cipher_context_t {int header_protection; int aead; } ;


 int ptls_aead_free (int ) ;
 int ptls_cipher_free (int ) ;

__attribute__((used)) static void dispose_cipher(struct st_quicly_cipher_context_t *ctx)
{
    ptls_aead_free(ctx->aead);
    ptls_cipher_free(ctx->header_protection);
}
