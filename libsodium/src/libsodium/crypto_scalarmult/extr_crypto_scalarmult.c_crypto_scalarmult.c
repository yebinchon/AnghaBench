
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_scalarmult_curve25519 (unsigned char*,unsigned char const*,unsigned char const*) ;

int
crypto_scalarmult(unsigned char *q, const unsigned char *n,
                  const unsigned char *p)
{
    return crypto_scalarmult_curve25519(q, n, p);
}
