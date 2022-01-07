
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARGON2_MAX_TIME ;
 int COMPILER_ASSERT (int) ;
 scalar_t__ crypto_pwhash_argon2i_OPSLIMIT_MAX ;

size_t
crypto_pwhash_argon2i_opslimit_max(void)
{
    COMPILER_ASSERT(crypto_pwhash_argon2i_OPSLIMIT_MAX <= ARGON2_MAX_TIME);
    return crypto_pwhash_argon2i_OPSLIMIT_MAX;
}
