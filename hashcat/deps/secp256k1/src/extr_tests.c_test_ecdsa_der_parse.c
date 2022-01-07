
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_ecdsa_signature ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,unsigned char*) ;
 int BN_is_negative (int const*) ;
 int BN_num_bits (int const*) ;
 int BN_num_bytes (int const*) ;
 int CHECK (int) ;
 int ECDSA_SIG_free (int *) ;
 int ECDSA_SIG_get0 (int *,int const**,int const**) ;
 int * ECDSA_SIG_new () ;
 int ctx ;
 int * d2i_ECDSA_SIG (int **,unsigned char const**,size_t) ;
 int ecdsa_signature_parse_der_lax (int ,int *,unsigned char const*,size_t) ;
 int i2d_ECDSA_SIG (int *,unsigned char**) ;
 scalar_t__ memcmp (unsigned char*,unsigned char const*,size_t) ;
 int secp256k1_ecdsa_signature_parse_der (int ,int *,unsigned char const*,size_t) ;
 int secp256k1_ecdsa_signature_serialize_compact (int ,unsigned char*,int *) ;
 int secp256k1_ecdsa_signature_serialize_der (int ,unsigned char*,size_t*,int *) ;

int test_ecdsa_der_parse(const unsigned char *sig, size_t siglen, int certainly_der, int certainly_not_der) {
    static const unsigned char zeroes[32] = {0};
    int ret = 0;

    secp256k1_ecdsa_signature sig_der;
    unsigned char roundtrip_der[2048];
    unsigned char compact_der[64];
    size_t len_der = 2048;
    int parsed_der = 0, valid_der = 0, roundtrips_der = 0;

    secp256k1_ecdsa_signature sig_der_lax;
    unsigned char roundtrip_der_lax[2048];
    unsigned char compact_der_lax[64];
    size_t len_der_lax = 2048;
    int parsed_der_lax = 0, valid_der_lax = 0, roundtrips_der_lax = 0;
    parsed_der = secp256k1_ecdsa_signature_parse_der(ctx, &sig_der, sig, siglen);
    if (parsed_der) {
        ret |= (!secp256k1_ecdsa_signature_serialize_compact(ctx, compact_der, &sig_der)) << 0;
        valid_der = (memcmp(compact_der, zeroes, 32) != 0) && (memcmp(compact_der + 32, zeroes, 32) != 0);
    }
    if (valid_der) {
        ret |= (!secp256k1_ecdsa_signature_serialize_der(ctx, roundtrip_der, &len_der, &sig_der)) << 1;
        roundtrips_der = (len_der == siglen) && memcmp(roundtrip_der, sig, siglen) == 0;
    }

    parsed_der_lax = ecdsa_signature_parse_der_lax(ctx, &sig_der_lax, sig, siglen);
    if (parsed_der_lax) {
        ret |= (!secp256k1_ecdsa_signature_serialize_compact(ctx, compact_der_lax, &sig_der_lax)) << 10;
        valid_der_lax = (memcmp(compact_der_lax, zeroes, 32) != 0) && (memcmp(compact_der_lax + 32, zeroes, 32) != 0);
    }
    if (valid_der_lax) {
        ret |= (!secp256k1_ecdsa_signature_serialize_der(ctx, roundtrip_der_lax, &len_der_lax, &sig_der_lax)) << 11;
        roundtrips_der_lax = (len_der_lax == siglen) && memcmp(roundtrip_der_lax, sig, siglen) == 0;
    }

    if (certainly_der) {
        ret |= (!parsed_der) << 2;
    }
    if (certainly_not_der) {
        ret |= (parsed_der) << 17;
    }
    if (valid_der) {
        ret |= (!roundtrips_der) << 3;
    }

    if (valid_der) {
        ret |= (!roundtrips_der_lax) << 12;
        ret |= (len_der != len_der_lax) << 13;
        ret |= ((len_der != len_der_lax) || (memcmp(roundtrip_der_lax, roundtrip_der, len_der) != 0)) << 14;
    }
    ret |= (roundtrips_der != roundtrips_der_lax) << 15;
    if (parsed_der) {
        ret |= (!parsed_der_lax) << 16;
    }
    return ret;
}
