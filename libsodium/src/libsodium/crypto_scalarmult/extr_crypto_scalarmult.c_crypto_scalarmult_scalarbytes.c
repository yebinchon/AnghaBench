
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_scalarmult_SCALARBYTES ;

size_t
crypto_scalarmult_scalarbytes(void)
{
    return crypto_scalarmult_SCALARBYTES;
}
