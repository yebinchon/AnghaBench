
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_ecdsa_signature ;
struct TYPE_2__ {unsigned char* msg; unsigned char* key; int ctx; } ;
typedef TYPE_1__ bench_sign ;


 int CHECK (int ) ;
 int secp256k1_ecdsa_sign (int ,int *,unsigned char*,unsigned char*,int *,int *) ;
 int secp256k1_ecdsa_signature_serialize_der (int ,unsigned char*,size_t*,int *) ;

__attribute__((used)) static void bench_sign_run(void* arg) {
    int i;
    bench_sign *data = (bench_sign*)arg;

    unsigned char sig[74];
    for (i = 0; i < 20000; i++) {
        size_t siglen = 74;
        int j;
        secp256k1_ecdsa_signature signature;
        CHECK(secp256k1_ecdsa_sign(data->ctx, &signature, data->msg, data->key, ((void*)0), ((void*)0)));
        CHECK(secp256k1_ecdsa_signature_serialize_der(data->ctx, sig, &siglen, &signature));
        for (j = 0; j < 32; j++) {
            data->msg[j] = sig[j];
            data->key[j] = sig[j + 32];
        }
    }
}
