
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ristretto255_from_hash (unsigned char*,unsigned char const*) ;

int
crypto_core_ristretto255_from_hash(unsigned char *p, const unsigned char *r)
{
    ristretto255_from_hash(p, r);

    return 0;
}
