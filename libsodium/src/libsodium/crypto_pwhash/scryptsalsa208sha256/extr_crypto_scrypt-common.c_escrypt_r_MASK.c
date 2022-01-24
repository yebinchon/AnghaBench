#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  escrypt_local_t ;
typedef  scalar_t__ (* escrypt_kdf_t ) (int /*<<< orphan*/ *,scalar_t__ const*,size_t,scalar_t__ const*,size_t,int,int,int,scalar_t__*,int) ;

/* Variables and functions */
 int crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES ; 
 size_t crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED ; 
 scalar_t__* FUNC0 (scalar_t__*,size_t,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__ const*,size_t,scalar_t__ const*,size_t,int,int,int,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__ const*,size_t,scalar_t__ const*,size_t,int,int,int,scalar_t__*,int) ; 
 scalar_t__* FUNC3 (scalar_t__ const*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 scalar_t__ FUNC6 () ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char) ; 

uint8_t *
FUNC9(escrypt_local_t *local, const uint8_t *passwd, size_t passwdlen,
          const uint8_t *setting, uint8_t *buf, size_t buflen)
{
    uint8_t        hash[crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES];
    escrypt_kdf_t  escrypt_kdf;
    const uint8_t *src;
    const uint8_t *salt;
    uint8_t       *dst;
    size_t         prefixlen;
    size_t         saltlen;
    size_t         need;
    uint64_t       N;
    uint32_t       N_log2;
    uint32_t       r;
    uint32_t       p;

    src = FUNC3(setting, &N_log2, &r, &p);
    if (!src) {
        return NULL;
    }
    N = (uint64_t) 1 << N_log2;
    prefixlen = src - setting;

    salt = src;
    src  = (const uint8_t *) FUNC8((const char *) salt, '$');
    if (src) {
        saltlen = src - salt;
    } else {
        saltlen = FUNC7((const char *) salt);
    }
    need = prefixlen + saltlen + 1 +
           crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED + 1;
    if (need > buflen || need < saltlen) {
        return NULL;
    }
#ifdef HAVE_EMMINTRIN_H
    escrypt_kdf =
        sodium_runtime_has_sse2() ? escrypt_kdf_sse : escrypt_kdf_nosse;
#else
    escrypt_kdf = escrypt_kdf_nosse;
#endif
    if (escrypt_kdf(local, passwd, passwdlen, salt, saltlen, N, r, p, hash,
                    sizeof(hash))) {
        return NULL;
    }
    dst = buf;
    FUNC4(dst, setting, prefixlen + saltlen);
    dst += prefixlen + saltlen;
    *dst++ = '$';

    dst = FUNC0(dst, buflen - (dst - buf), hash, sizeof(hash));
    FUNC5(hash, sizeof hash);
    if (!dst || dst >= buf + buflen) {
        return NULL; /* Can't happen LCOV_EXCL_LINE */
    }
    *dst = 0; /* NUL termination */

    return buf;
}