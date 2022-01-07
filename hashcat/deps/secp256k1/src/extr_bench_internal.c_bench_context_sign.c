
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECP256K1_CONTEXT_SIGN ;
 int secp256k1_context_create (int ) ;
 int secp256k1_context_destroy (int ) ;

void bench_context_sign(void* arg) {
    int i;
    (void)arg;
    for (i = 0; i < 200; i++) {
        secp256k1_context_destroy(secp256k1_context_create(SECP256K1_CONTEXT_SIGN));
    }
}
