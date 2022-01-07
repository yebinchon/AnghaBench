
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scalar_x; } ;
typedef TYPE_1__ bench_inv ;


 int secp256k1_scalar_sqr (int *,int *) ;

void bench_scalar_sqr(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;

    for (i = 0; i < 200000; i++) {
        secp256k1_scalar_sqr(&data->scalar_x, &data->scalar_x);
    }
}
