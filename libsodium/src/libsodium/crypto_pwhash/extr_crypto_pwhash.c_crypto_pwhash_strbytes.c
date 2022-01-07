
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_pwhash_STRBYTES ;

size_t
crypto_pwhash_strbytes(void)
{
    return crypto_pwhash_STRBYTES;
}
