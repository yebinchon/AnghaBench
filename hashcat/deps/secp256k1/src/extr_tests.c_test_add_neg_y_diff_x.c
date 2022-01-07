
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_gej ;
typedef int secp256k1_ge ;


 int SECP256K1_GEJ_CONST (int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int ge_equals_gej (int *,int *) ;
 int secp256k1_ge_set_gej (int *,int *) ;
 int secp256k1_gej_add_ge (int *,int *,int *) ;
 int secp256k1_gej_add_ge_var (int *,int *,int *,int *) ;
 int secp256k1_gej_add_var (int *,int *,int *,int *) ;

void test_add_neg_y_diff_x(void) {
    secp256k1_gej aj = SECP256K1_GEJ_CONST(
        0x8d24cd95, 0x0a355af1, 0x3c543505, 0x44238d30,
        0x0643d79f, 0x05a59614, 0x2f8ec030, 0xd58977cb,
        0x001e337a, 0x38093dcd, 0x6c0f386d, 0x0b1293a8,
        0x4d72c879, 0xd7681924, 0x44e6d2f3, 0x9190117d
    );
    secp256k1_gej bj = SECP256K1_GEJ_CONST(
        0xc7b74206, 0x1f788cd9, 0xabd0937d, 0x164a0d86,
        0x95f6ff75, 0xf19a4ce9, 0xd013bd7b, 0xbf92d2a7,
        0xffe1cc85, 0xc7f6c232, 0x93f0c792, 0xf4ed6c57,
        0xb28d3786, 0x2897e6db, 0xbb192d0b, 0x6e6feab2
    );
    secp256k1_gej sumj = SECP256K1_GEJ_CONST(
        0x671a63c0, 0x3efdad4c, 0x389a7798, 0x24356027,
        0xb3d69010, 0x278625c3, 0x5c86d390, 0x184a8f7a,
        0x5f6409c2, 0x2ce01f2b, 0x511fd375, 0x25071d08,
        0xda651801, 0x70e95caf, 0x8f0d893c, 0xbed8fbbe
    );
    secp256k1_ge b;
    secp256k1_gej resj;
    secp256k1_ge res;
    secp256k1_ge_set_gej(&b, &bj);

    secp256k1_gej_add_var(&resj, &aj, &bj, ((void*)0));
    secp256k1_ge_set_gej(&res, &resj);
    ge_equals_gej(&res, &sumj);

    secp256k1_gej_add_ge(&resj, &aj, &b);
    secp256k1_ge_set_gej(&res, &resj);
    ge_equals_gej(&res, &sumj);

    secp256k1_gej_add_ge_var(&resj, &aj, &b, ((void*)0));
    secp256k1_ge_set_gej(&res, &resj);
    ge_equals_gej(&res, &sumj);
}
