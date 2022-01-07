
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_iovec_t ;
typedef int ptls_hash_algorithm_t ;


 char* PTLS_HKDF_EXPAND_LABEL_PREFIX ;
 int hkdf_expand_label (int *,void*,size_t,int ,char const*,int ,char const*) ;

int ptls_hkdf_expand_label(ptls_hash_algorithm_t *algo, void *output, size_t outlen, ptls_iovec_t secret, const char *label,
                           ptls_iovec_t hash_value, const char *label_prefix)
{


    if (label_prefix == ((void*)0))
        label_prefix = PTLS_HKDF_EXPAND_LABEL_PREFIX;
    return hkdf_expand_label(algo, output, outlen, secret, label, hash_value, label_prefix);
}
