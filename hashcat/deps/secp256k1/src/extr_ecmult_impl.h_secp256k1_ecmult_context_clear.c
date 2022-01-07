
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_ecmult_context ;


 int secp256k1_ecmult_context_init (int *) ;

__attribute__((used)) static void secp256k1_ecmult_context_clear(secp256k1_ecmult_context *ctx) {
    secp256k1_ecmult_context_init(ctx);
}
