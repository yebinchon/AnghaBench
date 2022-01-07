
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ retry; int v; int k; } ;
typedef TYPE_1__ secp256k1_rfc6979_hmac_sha256 ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void secp256k1_rfc6979_hmac_sha256_finalize(secp256k1_rfc6979_hmac_sha256 *rng) {
    memset(rng->k, 0, 32);
    memset(rng->v, 0, 32);
    rng->retry = 0;
}
