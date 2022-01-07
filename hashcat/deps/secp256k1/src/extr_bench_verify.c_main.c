
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_pubkey ;
typedef int secp256k1_ecdsa_signature ;
struct TYPE_3__ {int* msg; int* key; int siglen; int pubkeylen; int ctx; int ec_group; int pubkey; int sig; } ;
typedef TYPE_1__ benchmark_verify_t ;


 int CHECK (int) ;
 int EC_GROUP_free (int ) ;
 int EC_GROUP_new_by_curve_name (int ) ;
 int NID_secp256k1 ;
 int SECP256K1_CONTEXT_SIGN ;
 int SECP256K1_CONTEXT_VERIFY ;
 int SECP256K1_EC_COMPRESSED ;
 int benchmark_verify ;
 int benchmark_verify_openssl ;
 int run_benchmark (char*,int ,int *,int *,TYPE_1__*,int,int) ;
 int secp256k1_context_create (int) ;
 int secp256k1_context_destroy (int ) ;
 int secp256k1_ec_pubkey_create (int ,int *,int*) ;
 int secp256k1_ec_pubkey_serialize (int ,int ,int*,int *,int ) ;
 int secp256k1_ecdsa_sign (int ,int *,int*,int*,int *,int *) ;
 int secp256k1_ecdsa_signature_serialize_der (int ,int ,int*,int *) ;

int main(void) {
    int i;
    secp256k1_pubkey pubkey;
    secp256k1_ecdsa_signature sig;
    benchmark_verify_t data;

    data.ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);

    for (i = 0; i < 32; i++) {
        data.msg[i] = 1 + i;
    }
    for (i = 0; i < 32; i++) {
        data.key[i] = 33 + i;
    }
    data.siglen = 72;
    CHECK(secp256k1_ecdsa_sign(data.ctx, &sig, data.msg, data.key, ((void*)0), ((void*)0)));
    CHECK(secp256k1_ecdsa_signature_serialize_der(data.ctx, data.sig, &data.siglen, &sig));
    CHECK(secp256k1_ec_pubkey_create(data.ctx, &pubkey, data.key));
    data.pubkeylen = 33;
    CHECK(secp256k1_ec_pubkey_serialize(data.ctx, data.pubkey, &data.pubkeylen, &pubkey, SECP256K1_EC_COMPRESSED) == 1);

    run_benchmark("ecdsa_verify", benchmark_verify, ((void*)0), ((void*)0), &data, 10, 20000);






    secp256k1_context_destroy(data.ctx);
    return 0;
}
