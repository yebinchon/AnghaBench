
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scalar_y; int scalar_x; int wnaf; } ;
typedef TYPE_1__ bench_inv ;


 int WINDOW_A ;
 int secp256k1_ecmult_wnaf (int ,int,int *,int ) ;
 int secp256k1_scalar_add (int *,int *,int *) ;

void bench_ecmult_wnaf(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;

    for (i = 0; i < 20000; i++) {
        secp256k1_ecmult_wnaf(data->wnaf, 256, &data->scalar_x, WINDOW_A);
        secp256k1_scalar_add(&data->scalar_x, &data->scalar_x, &data->scalar_y);
    }
}
