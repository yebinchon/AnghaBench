
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_pubkey ;
typedef int secp256k1_ecdsa_recoverable_signature ;
struct TYPE_2__ {unsigned char* sig; unsigned char* msg; int ctx; } ;
typedef TYPE_1__ bench_recover_data ;


 int CHECK (int ) ;
 int SECP256K1_EC_COMPRESSED ;
 int secp256k1_ec_pubkey_serialize (int ,unsigned char*,size_t*,int *,int ) ;
 int secp256k1_ecdsa_recover (int ,int *,int *,unsigned char*) ;
 int secp256k1_ecdsa_recoverable_signature_parse_compact (int ,int *,unsigned char*,int) ;

void bench_recover(void* arg) {
    int i;
    bench_recover_data *data = (bench_recover_data*)arg;
    secp256k1_pubkey pubkey;
    unsigned char pubkeyc[33];

    for (i = 0; i < 20000; i++) {
        int j;
        size_t pubkeylen = 33;
        secp256k1_ecdsa_recoverable_signature sig;
        CHECK(secp256k1_ecdsa_recoverable_signature_parse_compact(data->ctx, &sig, data->sig, i % 2));
        CHECK(secp256k1_ecdsa_recover(data->ctx, &pubkey, &sig, data->msg));
        CHECK(secp256k1_ec_pubkey_serialize(data->ctx, pubkeyc, &pubkeylen, &pubkey, SECP256K1_EC_COMPRESSED));
        for (j = 0; j < 32; j++) {
            data->sig[j + 32] = data->msg[j];
            data->msg[j] = data->sig[j];
            data->sig[j] = pubkeyc[j + 1];
        }
    }
}
