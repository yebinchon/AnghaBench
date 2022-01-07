
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int secp256k1_der_parse_integer (int *,unsigned char const**,unsigned char const*) ;
 scalar_t__ secp256k1_der_read_len (size_t*,unsigned char const**,unsigned char const*) ;

__attribute__((used)) static int secp256k1_ecdsa_sig_parse(secp256k1_scalar *rr, secp256k1_scalar *rs, const unsigned char *sig, size_t size) {
    const unsigned char *sigend = sig + size;
    size_t rlen;
    if (sig == sigend || *(sig++) != 0x30) {

        return 0;
    }
    if (secp256k1_der_read_len(&rlen, &sig, sigend) == 0) {
        return 0;
    }
    if (rlen != (size_t)(sigend - sig)) {

        return 0;
    }

    if (!secp256k1_der_parse_integer(rr, &sig, sigend)) {
        return 0;
    }
    if (!secp256k1_der_parse_integer(rs, &sig, sigend)) {
        return 0;
    }

    if (sig != sigend) {

        return 0;
    }

    return 1;
}
