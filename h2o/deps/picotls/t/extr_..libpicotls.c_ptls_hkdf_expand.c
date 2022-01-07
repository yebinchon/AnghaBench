
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int len; int * base; } ;
typedef TYPE_1__ ptls_iovec_t ;
struct TYPE_15__ {int (* final ) (TYPE_2__*,int *,int) ;int (* update ) (TYPE_2__*,int *,int) ;} ;
typedef TYPE_2__ ptls_hash_context_t ;
struct TYPE_16__ {size_t digest_size; } ;
typedef TYPE_3__ ptls_hash_algorithm_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int PTLS_HASH_FINAL_MODE_FREE ;
 int PTLS_MAX_DIGEST_SIZE ;
 int memcpy (int *,int *,size_t) ;
 int ptls_clear_memory (int *,size_t) ;
 TYPE_2__* ptls_hmac_create (TYPE_3__*,int *,int) ;
 int stub1 (TYPE_2__*,int *,int) ;
 int stub2 (TYPE_2__*,int *,int) ;
 int stub3 (TYPE_2__*,int *,int) ;
 int stub4 (TYPE_2__*,int *,int) ;
 int stub5 (TYPE_2__*,int *,int) ;

int ptls_hkdf_expand(ptls_hash_algorithm_t *algo, void *output, size_t outlen, ptls_iovec_t prk, ptls_iovec_t info)
{
    ptls_hash_context_t *hmac = ((void*)0);
    size_t i;
    uint8_t digest[PTLS_MAX_DIGEST_SIZE];

    for (i = 0; (i * algo->digest_size) < outlen; ++i) {
        if (hmac == ((void*)0)) {
            if ((hmac = ptls_hmac_create(algo, prk.base, prk.len)) == ((void*)0))
                return PTLS_ERROR_NO_MEMORY;
        } else {
            hmac->update(hmac, digest, algo->digest_size);
        }
        hmac->update(hmac, info.base, info.len);
        uint8_t gen = (uint8_t)(i + 1);
        hmac->update(hmac, &gen, 1);
        hmac->final(hmac, digest, 1);

        size_t off_start = i * algo->digest_size, off_end = off_start + algo->digest_size;
        if (off_end > outlen)
            off_end = outlen;
        memcpy((uint8_t *)output + off_start, digest, off_end - off_start);
    }

    if (hmac != ((void*)0))
        hmac->final(hmac, ((void*)0), PTLS_HASH_FINAL_MODE_FREE);

    ptls_clear_memory(digest, algo->digest_size);

    return 0;
}
