
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_num ;
struct TYPE_2__ {int scalar_y; int scalar_x; } ;
typedef TYPE_1__ bench_inv ;


 int secp256k1_num_jacobi (int *,int *) ;
 int secp256k1_scalar_get_num (int *,int *) ;
 int secp256k1_scalar_order_get_num (int *) ;

void bench_num_jacobi(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;
    secp256k1_num nx, norder;

    secp256k1_scalar_get_num(&nx, &data->scalar_x);
    secp256k1_scalar_order_get_num(&norder);
    secp256k1_scalar_get_num(&norder, &data->scalar_y);

    for (i = 0; i < 200000; i++) {
        secp256k1_num_jacobi(&nx, &norder);
    }
}
