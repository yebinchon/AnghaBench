
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* d; } ;
typedef TYPE_1__ secp256k1_scalar ;


 scalar_t__ SECP256K1_N_H_0 ;
 scalar_t__ SECP256K1_N_H_1 ;
 scalar_t__ SECP256K1_N_H_2 ;
 scalar_t__ SECP256K1_N_H_3 ;
 scalar_t__ SECP256K1_N_H_4 ;
 scalar_t__ SECP256K1_N_H_5 ;
 scalar_t__ SECP256K1_N_H_6 ;
 scalar_t__ SECP256K1_N_H_7 ;

__attribute__((used)) static int secp256k1_scalar_is_high(const secp256k1_scalar *a) {
    int yes = 0;
    int no = 0;
    no |= (a->d[7] < SECP256K1_N_H_7);
    yes |= (a->d[7] > SECP256K1_N_H_7) & ~no;
    no |= (a->d[6] < SECP256K1_N_H_6) & ~yes;
    no |= (a->d[5] < SECP256K1_N_H_5) & ~yes;
    no |= (a->d[4] < SECP256K1_N_H_4) & ~yes;
    no |= (a->d[3] < SECP256K1_N_H_3) & ~yes;
    yes |= (a->d[3] > SECP256K1_N_H_3) & ~no;
    no |= (a->d[2] < SECP256K1_N_H_2) & ~yes;
    yes |= (a->d[2] > SECP256K1_N_H_2) & ~no;
    no |= (a->d[1] < SECP256K1_N_H_1) & ~yes;
    yes |= (a->d[1] > SECP256K1_N_H_1) & ~no;
    yes |= (a->d[0] > SECP256K1_N_H_0) & ~no;
    return yes;
}
