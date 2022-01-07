
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe25519 ;


 int fe25519_cmov (int ,int ,unsigned int) ;
 int fe25519_copy (int ,int const) ;
 int fe25519_neg (int ,int const) ;

__attribute__((used)) static inline void
fe25519_cneg(fe25519 h, const fe25519 f, unsigned int b)
{
    fe25519 negf;

    fe25519_neg(negf, f);
    fe25519_copy(h, f);
    fe25519_cmov(h, negf, b);
}
