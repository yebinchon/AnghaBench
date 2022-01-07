
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Y; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int fe25519_1 (int ) ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_invert (int ,int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;
 int fe25519_tobytes (unsigned char*,int ) ;
 scalar_t__ ge25519_frombytes_negate_vartime (TYPE_1__*,unsigned char const*) ;
 scalar_t__ ge25519_has_small_order (unsigned char const*) ;
 scalar_t__ ge25519_is_on_main_subgroup (TYPE_1__*) ;

int
crypto_sign_ed25519_pk_to_curve25519(unsigned char *curve25519_pk,
                                     const unsigned char *ed25519_pk)
{
    ge25519_p3 A;
    fe25519 x;
    fe25519 one_minus_y;

    if (ge25519_has_small_order(ed25519_pk) != 0 ||
        ge25519_frombytes_negate_vartime(&A, ed25519_pk) != 0 ||
        ge25519_is_on_main_subgroup(&A) == 0) {
        return -1;
    }
    fe25519_1(one_minus_y);
    fe25519_sub(one_minus_y, one_minus_y, A.Y);
    fe25519_1(x);
    fe25519_add(x, x, A.Y);
    fe25519_invert(one_minus_y, one_minus_y);
    fe25519_mul(x, x, one_minus_y);
    fe25519_tobytes(curve25519_pk, x);

    return 0;
}
