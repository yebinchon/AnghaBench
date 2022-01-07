
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int T2d; int Z; int YplusX; int YminusX; } ;
typedef TYPE_1__ const ge25519_cached ;


 unsigned char const equal (unsigned char const,int) ;
 int fe25519_copy (int ,int ) ;
 int fe25519_neg (int ,int ) ;
 int ge25519_cached_0 (TYPE_1__ const*) ;
 int ge25519_cmov_cached (TYPE_1__ const*,TYPE_1__ const*,unsigned char const) ;
 unsigned char negative (char const) ;

__attribute__((used)) static void
ge25519_cmov8_cached(ge25519_cached *t, const ge25519_cached cached[8], const signed char b)
{
    ge25519_cached minust;
    const unsigned char bnegative = negative(b);
    const unsigned char babs = b - (((-bnegative) & b) * ((signed char) 1 << 1));

    ge25519_cached_0(t);
    ge25519_cmov_cached(t, &cached[0], equal(babs, 1));
    ge25519_cmov_cached(t, &cached[1], equal(babs, 2));
    ge25519_cmov_cached(t, &cached[2], equal(babs, 3));
    ge25519_cmov_cached(t, &cached[3], equal(babs, 4));
    ge25519_cmov_cached(t, &cached[4], equal(babs, 5));
    ge25519_cmov_cached(t, &cached[5], equal(babs, 6));
    ge25519_cmov_cached(t, &cached[6], equal(babs, 7));
    ge25519_cmov_cached(t, &cached[7], equal(babs, 8));
    fe25519_copy(minust.YplusX, t->YminusX);
    fe25519_copy(minust.YminusX, t->YplusX);
    fe25519_copy(minust.Z, t->Z);
    fe25519_neg(minust.T2d, t->T2d);
    ge25519_cmov_cached(t, &minust, bnegative);
}
