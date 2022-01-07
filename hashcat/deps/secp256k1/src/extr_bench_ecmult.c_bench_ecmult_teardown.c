
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_gej ;
struct TYPE_2__ {int count; int * expected_output; int * output; } ;
typedef TYPE_1__ bench_data ;


 int CHECK (int ) ;
 int ITERS ;
 int secp256k1_gej_add_var (int *,int *,int *,int *) ;
 int secp256k1_gej_is_infinity (int *) ;

__attribute__((used)) static void bench_ecmult_teardown(void* arg) {
    bench_data* data = (bench_data*)arg;
    size_t iters = 1 + ITERS / data->count;
    size_t iter;

    for (iter = 0; iter < iters; ++iter) {
        secp256k1_gej tmp;
        secp256k1_gej_add_var(&tmp, &data->output[iter], &data->expected_output[iter], ((void*)0));
        CHECK(secp256k1_gej_is_infinity(&tmp));
    }
}
