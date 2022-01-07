
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_fe ;
struct TYPE_2__ {int fe_y; int fe_x; } ;
typedef TYPE_1__ bench_inv ;


 int secp256k1_fe_add (int *,int *) ;
 int secp256k1_fe_sqrt (int *,int *) ;

void bench_field_sqrt(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;
    secp256k1_fe t;

    for (i = 0; i < 20000; i++) {
        t = data->fe_x;
        secp256k1_fe_sqrt(&data->fe_x, &t);
        secp256k1_fe_add(&data->fe_x, &data->fe_y);
    }
}
