
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int EINVAL ;
 unsigned int crypto_pwhash_scryptsalsa208sha256_STRBYTES ;
 int errno ;
 int * escrypt_parse_setting (int const*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ pickparams (unsigned long long,size_t,scalar_t__*,scalar_t__*,scalar_t__*) ;
 unsigned int sodium_strnlen (char const*,unsigned int) ;

int
crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(
    const char str[crypto_pwhash_scryptsalsa208sha256_STRBYTES],
    unsigned long long opslimit, size_t memlimit)
{
    uint32_t N_log2, N_log2_;
    uint32_t p, p_;
    uint32_t r, r_;

    if (pickparams(opslimit, memlimit, &N_log2, &p, &r) != 0) {
        errno = EINVAL;
        return -1;
    }
    if (sodium_strnlen(str, crypto_pwhash_scryptsalsa208sha256_STRBYTES) !=
        crypto_pwhash_scryptsalsa208sha256_STRBYTES - 1U) {
        errno = EINVAL;
        return -1;
    }
    if (escrypt_parse_setting((const uint8_t *) str,
                              &N_log2_, &r_, &p_) == ((void*)0)) {
        errno = EINVAL;
        return -1;
    }
    if (N_log2 != N_log2_ || r != r_ || p != p_) {
        return 1;
    }
    return 0;
}
