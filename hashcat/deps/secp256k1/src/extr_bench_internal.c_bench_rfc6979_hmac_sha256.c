
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_rfc6979_hmac_sha256 ;
struct TYPE_2__ {int data; } ;
typedef TYPE_1__ bench_inv ;


 int secp256k1_rfc6979_hmac_sha256_generate (int *,int ,int) ;
 int secp256k1_rfc6979_hmac_sha256_initialize (int *,int ,int) ;

void bench_rfc6979_hmac_sha256(void* arg) {
    int i;
    bench_inv *data = (bench_inv*)arg;
    secp256k1_rfc6979_hmac_sha256 rng;

    for (i = 0; i < 20000; i++) {
        secp256k1_rfc6979_hmac_sha256_initialize(&rng, data->data, 64);
        secp256k1_rfc6979_hmac_sha256_generate(&rng, data->data, 32);
    }
}
