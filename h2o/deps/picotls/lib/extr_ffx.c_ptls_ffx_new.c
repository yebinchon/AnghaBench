
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_ffx_context_t ;
typedef int ptls_cipher_context_t ;
typedef int ptls_cipher_algorithm_t ;


 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 scalar_t__ ptls_ffx_setup_crypto (int *,int *,int,int,size_t,void const*) ;

ptls_cipher_context_t *ptls_ffx_new(ptls_cipher_algorithm_t *algo, int is_enc, int nb_rounds, size_t bit_length, const void *key)
{
    ptls_cipher_context_t *ctx = (ptls_cipher_context_t *)malloc(sizeof(ptls_ffx_context_t));

    if (ctx != ((void*)0)) {
        memset(ctx, 0, sizeof(ptls_ffx_context_t));
        if (ptls_ffx_setup_crypto(ctx, algo, is_enc, nb_rounds, bit_length, key) != 0) {
            free(ctx);
            ctx = ((void*)0);
        }
    }

    return ctx;
}
