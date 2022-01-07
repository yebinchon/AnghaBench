
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptls_iovec_t ;
struct TYPE_4__ {int digest_size; } ;
typedef TYPE_1__ ptls_hash_algorithm_t ;


 int ptls_hkdf_expand_label (TYPE_1__*,void*,size_t,int ,char*,int ,char const*) ;
 int ptls_iovec_init (void const*,int ) ;

__attribute__((used)) static int get_traffic_key(ptls_hash_algorithm_t *algo, void *key, size_t key_size, int is_iv, const void *secret,
                           ptls_iovec_t hash_value, const char *label_prefix)
{
    return ptls_hkdf_expand_label(algo, key, key_size, ptls_iovec_init(secret, algo->digest_size), is_iv ? "iv" : "key", hash_value,
                                  label_prefix);
}
