
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _crypto_scalarmult_ed25519 (unsigned char*,unsigned char const*,unsigned char const*,int) ;

int
crypto_scalarmult_ed25519(unsigned char *q, const unsigned char *n,
                          const unsigned char *p)
{
    return _crypto_scalarmult_ed25519(q, n, p, 1);
}
