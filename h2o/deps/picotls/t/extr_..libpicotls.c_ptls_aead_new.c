
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_hash_algorithm_t ;
typedef int ptls_aead_context_t ;
typedef int ptls_aead_algorithm_t ;


 int * new_aead (int *,int *,int,void const*,int ,char const*) ;
 int ptls_iovec_init (int *,int ) ;

ptls_aead_context_t *ptls_aead_new(ptls_aead_algorithm_t *aead, ptls_hash_algorithm_t *hash, int is_enc, const void *secret,
                                   const char *label_prefix)
{
    return new_aead(aead, hash, is_enc, secret, ptls_iovec_init(((void*)0), 0), label_prefix);
}
