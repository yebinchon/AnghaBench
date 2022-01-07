
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_31__ {int y; int x; int infinity; int z; } ;
typedef TYPE_1__ secp256k1_gej ;
struct TYPE_32__ {int y; int x; int infinity; } ;
typedef TYPE_2__ secp256k1_ge ;
typedef int secp256k1_fe ;


 int CHECK (int) ;
 int ge_equals_ge (TYPE_2__ const*,TYPE_2__*) ;
 int ge_equals_gej (TYPE_2__ const*,TYPE_1__*) ;
 int secp256k1_fe_inv (int *,int *) ;
 int secp256k1_ge_is_infinity (TYPE_2__ const*) ;
 int secp256k1_ge_neg (TYPE_2__*,TYPE_2__ const*) ;
 int secp256k1_gej_add_ge (TYPE_1__*,TYPE_1__ const*,TYPE_2__ const*) ;
 int secp256k1_gej_add_ge_var (TYPE_1__*,TYPE_1__ const*,TYPE_2__ const*,int *) ;
 int secp256k1_gej_add_var (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int secp256k1_gej_add_zinv_var (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int *) ;
 int secp256k1_gej_double_nonzero (TYPE_1__*,TYPE_1__ const*,int *) ;
 int secp256k1_gej_double_var (TYPE_1__*,TYPE_1__ const*,int *) ;
 int secp256k1_gej_is_infinity (TYPE_1__ const*) ;
 int secp256k1_gej_neg (TYPE_1__*,TYPE_1__ const*) ;

void test_exhaustive_addition(const secp256k1_ge *group, const secp256k1_gej *groupj, int order) {
    int i, j;


    CHECK(secp256k1_ge_is_infinity(&group[0]));
    CHECK(secp256k1_gej_is_infinity(&groupj[0]));
    for (i = 1; i < order; i++) {
        CHECK(!secp256k1_ge_is_infinity(&group[i]));
        CHECK(!secp256k1_gej_is_infinity(&groupj[i]));
    }


    for (j = 0; j < order; j++) {
        secp256k1_fe fe_inv;
        secp256k1_fe_inv(&fe_inv, &groupj[j].z);
        for (i = 0; i < order; i++) {
            secp256k1_ge zless_gej;
            secp256k1_gej tmp;

            secp256k1_gej_add_var(&tmp, &groupj[i], &groupj[j], ((void*)0));
            ge_equals_gej(&group[(i + j) % order], &tmp);

            if (j > 0) {
                secp256k1_gej_add_ge(&tmp, &groupj[i], &group[j]);
                ge_equals_gej(&group[(i + j) % order], &tmp);
            }

            secp256k1_gej_add_ge_var(&tmp, &groupj[i], &group[j], ((void*)0));
            ge_equals_gej(&group[(i + j) % order], &tmp);

            zless_gej.infinity = groupj[j].infinity;
            zless_gej.x = groupj[j].x;
            zless_gej.y = groupj[j].y;
            secp256k1_gej_add_zinv_var(&tmp, &groupj[i], &zless_gej, &fe_inv);
            ge_equals_gej(&group[(i + j) % order], &tmp);
        }
    }


    for (i = 0; i < order; i++) {
        secp256k1_gej tmp;
        if (i > 0) {
            secp256k1_gej_double_nonzero(&tmp, &groupj[i], ((void*)0));
            ge_equals_gej(&group[(2 * i) % order], &tmp);
        }
        secp256k1_gej_double_var(&tmp, &groupj[i], ((void*)0));
        ge_equals_gej(&group[(2 * i) % order], &tmp);
    }


    for (i = 1; i < order; i++) {
        secp256k1_ge tmp;
        secp256k1_gej tmpj;
        secp256k1_ge_neg(&tmp, &group[i]);
        ge_equals_ge(&group[order - i], &tmp);
        secp256k1_gej_neg(&tmpj, &groupj[i]);
        ge_equals_gej(&group[order - i], &tmpj);
    }
}
