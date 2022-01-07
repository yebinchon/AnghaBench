
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARGON2_MIN_PWD_LENGTH ;
 int COMPILER_ASSERT (int) ;
 scalar_t__ crypto_pwhash_argon2i_PASSWD_MIN ;

size_t
crypto_pwhash_argon2i_passwd_min(void)
{
    COMPILER_ASSERT(crypto_pwhash_argon2i_PASSWD_MIN >= ARGON2_MIN_PWD_LENGTH);
    return crypto_pwhash_argon2i_PASSWD_MIN;
}
