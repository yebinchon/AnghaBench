
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ bench_recover_data ;


 int SECP256K1_CONTEXT_VERIFY ;
 int bench_recover ;
 int bench_recover_setup ;
 int run_benchmark (char*,int ,int ,int *,TYPE_1__*,int,int) ;
 int secp256k1_context_create (int ) ;
 int secp256k1_context_destroy (int ) ;

int main(void) {
    bench_recover_data data;

    data.ctx = secp256k1_context_create(SECP256K1_CONTEXT_VERIFY);

    run_benchmark("ecdsa_recover", bench_recover, bench_recover_setup, ((void*)0), &data, 10, 20000);

    secp256k1_context_destroy(data.ctx);
    return 0;
}
