
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int secp256k1_gej ;
struct TYPE_5__ {int y; int x; int infinity; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int CHECK (int) ;
 int random_fe_test (int *) ;
 int secp256k1_fe_equal_var (int *,int const*) ;
 int secp256k1_fe_is_odd (int *) ;
 int secp256k1_fe_is_quad_var (int *) ;
 scalar_t__ secp256k1_fe_is_zero (int *) ;
 int secp256k1_fe_normalize_var (int *) ;
 int secp256k1_ge_set_xo_var (TYPE_1__*,int *,int) ;
 int secp256k1_ge_set_xquad (TYPE_1__*,int *) ;
 int secp256k1_gej_has_quad_y_var (int *) ;
 int secp256k1_gej_neg (int *,int *) ;
 int secp256k1_gej_rescale (int *,int *) ;
 int secp256k1_gej_set_ge (int *,TYPE_1__*) ;

void test_group_decompress(const secp256k1_fe* x) {

    secp256k1_fe fex = *x;
    secp256k1_fe fez;

    secp256k1_ge ge_quad, ge_even, ge_odd;
    secp256k1_gej gej_quad;

    int res_quad, res_even, res_odd;

    secp256k1_fe_normalize_var(&fex);

    res_quad = secp256k1_ge_set_xquad(&ge_quad, &fex);
    res_even = secp256k1_ge_set_xo_var(&ge_even, &fex, 0);
    res_odd = secp256k1_ge_set_xo_var(&ge_odd, &fex, 1);

    CHECK(res_quad == res_even);
    CHECK(res_quad == res_odd);

    if (res_quad) {
        secp256k1_fe_normalize_var(&ge_quad.x);
        secp256k1_fe_normalize_var(&ge_odd.x);
        secp256k1_fe_normalize_var(&ge_even.x);
        secp256k1_fe_normalize_var(&ge_quad.y);
        secp256k1_fe_normalize_var(&ge_odd.y);
        secp256k1_fe_normalize_var(&ge_even.y);


        CHECK(!ge_quad.infinity);
        CHECK(!ge_even.infinity);
        CHECK(!ge_odd.infinity);


        CHECK(secp256k1_fe_equal_var(&ge_quad.x, x));
        CHECK(secp256k1_fe_equal_var(&ge_even.x, x));
        CHECK(secp256k1_fe_equal_var(&ge_odd.x, x));


        CHECK(secp256k1_fe_is_quad_var(&ge_quad.y));


        CHECK(secp256k1_fe_is_odd(&ge_odd.y));
        CHECK(!secp256k1_fe_is_odd(&ge_even.y));


        secp256k1_gej_set_ge(&gej_quad, &ge_quad);
        CHECK(secp256k1_gej_has_quad_y_var(&gej_quad));
        do {
            random_fe_test(&fez);
        } while (secp256k1_fe_is_zero(&fez));
        secp256k1_gej_rescale(&gej_quad, &fez);
        CHECK(secp256k1_gej_has_quad_y_var(&gej_quad));
        secp256k1_gej_neg(&gej_quad, &gej_quad);
        CHECK(!secp256k1_gej_has_quad_y_var(&gej_quad));
        do {
            random_fe_test(&fez);
        } while (secp256k1_fe_is_zero(&fez));
        secp256k1_gej_rescale(&gej_quad, &fez);
        CHECK(!secp256k1_gej_has_quad_y_var(&gej_quad));
        secp256k1_gej_neg(&gej_quad, &gej_quad);
        CHECK(secp256k1_gej_has_quad_y_var(&gej_quad));
    }
}
