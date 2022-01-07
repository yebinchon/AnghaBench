
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARGON2_MAX_MEMORY ;
 int COMPILER_ASSERT (int) ;
 unsigned int crypto_pwhash_argon2i_MEMLIMIT_MAX ;

size_t
crypto_pwhash_argon2i_memlimit_max(void)
{
    COMPILER_ASSERT((crypto_pwhash_argon2i_MEMLIMIT_MAX / 1024U) <= ARGON2_MAX_MEMORY);
    return crypto_pwhash_argon2i_MEMLIMIT_MAX;
}
