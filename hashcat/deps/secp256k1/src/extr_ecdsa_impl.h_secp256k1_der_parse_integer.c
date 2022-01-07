
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 scalar_t__ secp256k1_der_read_len (size_t*,unsigned char const**,unsigned char const*) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char*,int*) ;
 int secp256k1_scalar_set_int (int *,int ) ;

__attribute__((used)) static int secp256k1_der_parse_integer(secp256k1_scalar *r, const unsigned char **sig, const unsigned char *sigend) {
    int overflow = 0;
    unsigned char ra[32] = {0};
    size_t rlen;

    if (*sig == sigend || **sig != 0x02) {

        return 0;
    }
    (*sig)++;
    if (secp256k1_der_read_len(&rlen, sig, sigend) == 0) {
        return 0;
    }
    if (rlen == 0 || *sig + rlen > sigend) {

        return 0;
    }
    if (**sig == 0x00 && rlen > 1 && (((*sig)[1]) & 0x80) == 0x00) {

        return 0;
    }
    if (**sig == 0xFF && rlen > 1 && (((*sig)[1]) & 0x80) == 0x80) {

        return 0;
    }
    if ((**sig & 0x80) == 0x80) {

        overflow = 1;
    }



    if (rlen > 0 && **sig == 0) {

        rlen--;
        (*sig)++;
    }
    if (rlen > 32) {
        overflow = 1;
    }
    if (!overflow) {
        memcpy(ra + 32 - rlen, *sig, rlen);
        secp256k1_scalar_set_b32(r, ra, &overflow);
    }
    if (overflow) {
        secp256k1_scalar_set_int(r, 0);
    }
    (*sig) += rlen;
    return 1;
}
