
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int hash ;
typedef int escrypt_local_t ;
typedef scalar_t__ (* escrypt_kdf_t ) (int *,scalar_t__ const*,size_t,scalar_t__ const*,size_t,int,int,int,scalar_t__*,int) ;


 int crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES ;
 size_t crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED ;
 scalar_t__* encode64 (scalar_t__*,size_t,scalar_t__*,int) ;
 scalar_t__ escrypt_kdf_nosse (int *,scalar_t__ const*,size_t,scalar_t__ const*,size_t,int,int,int,scalar_t__*,int) ;
 scalar_t__ escrypt_kdf_sse (int *,scalar_t__ const*,size_t,scalar_t__ const*,size_t,int,int,int,scalar_t__*,int) ;
 scalar_t__* escrypt_parse_setting (scalar_t__ const*,int*,int*,int*) ;
 int memcpy (scalar_t__*,scalar_t__ const*,size_t) ;
 int sodium_memzero (scalar_t__*,int) ;
 scalar_t__ sodium_runtime_has_sse2 () ;
 size_t strlen (char const*) ;
 scalar_t__ strrchr (char const*,char) ;

uint8_t *
escrypt_r(escrypt_local_t *local, const uint8_t *passwd, size_t passwdlen,
          const uint8_t *setting, uint8_t *buf, size_t buflen)
{
    uint8_t hash[crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES];
    escrypt_kdf_t escrypt_kdf;
    const uint8_t *src;
    const uint8_t *salt;
    uint8_t *dst;
    size_t prefixlen;
    size_t saltlen;
    size_t need;
    uint64_t N;
    uint32_t N_log2;
    uint32_t r;
    uint32_t p;

    src = escrypt_parse_setting(setting, &N_log2, &r, &p);
    if (!src) {
        return ((void*)0);
    }
    N = (uint64_t) 1 << N_log2;
    prefixlen = src - setting;

    salt = src;
    src = (const uint8_t *) strrchr((const char *) salt, '$');
    if (src) {
        saltlen = src - salt;
    } else {
        saltlen = strlen((const char *) salt);
    }
    need = prefixlen + saltlen + 1 +
           crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED + 1;
    if (need > buflen || need < saltlen) {
        return ((void*)0);
    }




    escrypt_kdf = escrypt_kdf_nosse;

    if (escrypt_kdf(local, passwd, passwdlen, salt, saltlen, N, r, p, hash,
                    sizeof(hash))) {
        return ((void*)0);
    }
    dst = buf;
    memcpy(dst, setting, prefixlen + saltlen);
    dst += prefixlen + saltlen;
    *dst++ = '$';

    dst = encode64(dst, buflen - (dst - buf), hash, sizeof(hash));
    sodium_memzero(hash, sizeof hash);
    if (!dst || dst >= buf + buflen) {
        return ((void*)0);
    }
    *dst = 0;

    return buf;
}
