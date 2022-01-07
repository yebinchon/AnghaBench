
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int ptls_hash_algorithm_t ;


 int PTLS_SHA256_DIGEST_SIZE ;
 int QUICLY_MAX_CID_LEN_V1 ;
 int memcpy (void**,int ,scalar_t__) ;
 int ptls_calc_hash (int *,void**,void**,int) ;
 int quicly_decode64 (void*) ;

int quicly_retry_calc_cidpair_hash(ptls_hash_algorithm_t *sha256, ptls_iovec_t client_cid, ptls_iovec_t server_cid, uint64_t *value)
{
    uint8_t digest[PTLS_SHA256_DIGEST_SIZE], buf[(QUICLY_MAX_CID_LEN_V1 + 1) * 2], *p = buf;
    int ret;

    *p++ = (uint8_t)client_cid.len;
    memcpy(p, client_cid.base, client_cid.len);
    p += client_cid.len;
    *p++ = (uint8_t)server_cid.len;
    memcpy(p, server_cid.base, server_cid.len);
    p += server_cid.len;

    if ((ret = ptls_calc_hash(sha256, digest, buf, p - buf)) != 0)
        return ret;
    p = digest;
    *value = quicly_decode64((void *)&p);

    return 0;
}
