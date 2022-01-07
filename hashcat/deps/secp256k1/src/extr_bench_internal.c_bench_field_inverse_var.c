
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fe_y; int fe_x; } ;
typedef TYPE_1__ bench_inv ;


 int secp256k1_fe_add (int *,int *) ;
 int secp256k1_fe_inv_var (int *,int *) ;

void bench_field_inverse_var(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;

    for (i = 0; i < 20000; i++) {
        secp256k1_fe_inv_var(&data->fe_x, &data->fe_x);
        secp256k1_fe_add(&data->fe_x, &data->fe_y);
    }
}
