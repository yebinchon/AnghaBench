
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ge_y; int gej_x; } ;
typedef TYPE_1__ bench_inv ;


 int secp256k1_gej_add_ge_var (int *,int *,int *,int *) ;

void bench_group_add_affine_var(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;

    for (i = 0; i < 200000; i++) {
        secp256k1_gej_add_ge_var(&data->gej_x, &data->gej_x, &data->ge_y, ((void*)0));
    }
}
