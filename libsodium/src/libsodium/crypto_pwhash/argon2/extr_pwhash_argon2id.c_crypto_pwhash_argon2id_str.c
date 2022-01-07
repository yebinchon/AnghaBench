
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARGON2_OK ;
 int EFBIG ;
 int EINVAL ;
 int STR_HASHBYTES ;
 scalar_t__ argon2id_hash_encoded (int ,int ,int ,char const* const,size_t,unsigned char*,int,int ,char*,int ) ;
 size_t crypto_pwhash_argon2id_MEMLIMIT_MAX ;
 size_t crypto_pwhash_argon2id_MEMLIMIT_MIN ;
 unsigned long long crypto_pwhash_argon2id_OPSLIMIT_MAX ;
 unsigned long long crypto_pwhash_argon2id_OPSLIMIT_MIN ;
 unsigned long long crypto_pwhash_argon2id_PASSWD_MAX ;
 unsigned long long crypto_pwhash_argon2id_PASSWD_MIN ;
 int crypto_pwhash_argon2id_SALTBYTES ;
 int crypto_pwhash_argon2id_STRBYTES ;
 int errno ;
 int memset (char*,int ,int ) ;
 int randombytes_buf (unsigned char*,int) ;

int
crypto_pwhash_argon2id_str(char out[crypto_pwhash_argon2id_STRBYTES],
                           const char *const passwd,
                           unsigned long long passwdlen,
                           unsigned long long opslimit, size_t memlimit)
{
    unsigned char salt[crypto_pwhash_argon2id_SALTBYTES];

    memset(out, 0, crypto_pwhash_argon2id_STRBYTES);
    if (passwdlen > crypto_pwhash_argon2id_PASSWD_MAX ||
        opslimit > crypto_pwhash_argon2id_OPSLIMIT_MAX ||
        memlimit > crypto_pwhash_argon2id_MEMLIMIT_MAX) {
        errno = EFBIG;
        return -1;
    }
    if (passwdlen < crypto_pwhash_argon2id_PASSWD_MIN ||
        opslimit < crypto_pwhash_argon2id_OPSLIMIT_MIN ||
        memlimit < crypto_pwhash_argon2id_MEMLIMIT_MIN) {
        errno = EINVAL;
        return -1;
    }
    randombytes_buf(salt, sizeof salt);
    if (argon2id_hash_encoded((uint32_t) opslimit, (uint32_t) (memlimit / 1024U),
                              (uint32_t) 1U, passwd, (size_t) passwdlen, salt,
                              sizeof salt, STR_HASHBYTES, out,
                              crypto_pwhash_argon2id_STRBYTES) != ARGON2_OK) {
        return -1;
    }
    return 0;
}
