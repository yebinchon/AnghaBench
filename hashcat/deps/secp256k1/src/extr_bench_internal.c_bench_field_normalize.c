
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fe_x; } ;
typedef TYPE_1__ bench_inv ;


 int secp256k1_fe_normalize (int *) ;

void bench_field_normalize(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;

    for (i = 0; i < 2000000; i++) {
        secp256k1_fe_normalize(&data->fe_x);
    }
}
