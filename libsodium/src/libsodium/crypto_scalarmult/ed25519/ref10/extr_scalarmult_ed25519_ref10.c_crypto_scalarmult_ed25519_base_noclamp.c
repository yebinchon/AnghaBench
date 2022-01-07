
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _crypto_scalarmult_ed25519_base (unsigned char*,unsigned char const*,int ) ;

int
crypto_scalarmult_ed25519_base_noclamp(unsigned char *q,
                                       const unsigned char *n)
{
    return _crypto_scalarmult_ed25519_base(q, n, 0);
}
