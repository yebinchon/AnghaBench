
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int) ;
 int assign_big_endian (unsigned char*,int,int) ;
 int secp256k1_rand_bits (int) ;
 int secp256k1_rand_bytes_test (unsigned char*,size_t) ;
 int secp256k1_rand_int (int) ;

__attribute__((used)) static void random_ber_signature(unsigned char *sig, size_t *len, int* certainly_der, int* certainly_not_der) {
    int der;
    int nlow[2], nlen[2], nlenlen[2], nhbit[2], nhbyte[2], nzlen[2];
    size_t tlen, elen, glen;
    int indet;
    int n;

    *len = 0;
    der = secp256k1_rand_bits(2) == 0;
    *certainly_der = der;
    *certainly_not_der = 0;
    indet = der ? 0 : secp256k1_rand_int(10) == 0;

    for (n = 0; n < 2; n++) {

        nlow[n] = der ? 1 : (secp256k1_rand_bits(3) != 0);

        nlen[n] = nlow[n] ? secp256k1_rand_int(33) : 32 + secp256k1_rand_int(200) * secp256k1_rand_int(8) / 8;
        CHECK(nlen[n] <= 232);

        nhbit[n] = (nlow[n] == 0 && nlen[n] == 32) ? 1 : (nlen[n] == 0 ? 0 : secp256k1_rand_bits(1));

        nhbyte[n] = nlen[n] == 0 ? 0 : (nhbit[n] ? 128 + secp256k1_rand_bits(7) : 1 + secp256k1_rand_int(127));

        nzlen[n] = der ? ((nlen[n] == 0 || nhbit[n]) ? 1 : 0) : (nlow[n] ? secp256k1_rand_int(3) : secp256k1_rand_int(300 - nlen[n]) * secp256k1_rand_int(8) / 8);
        if (nzlen[n] > ((nlen[n] == 0 || nhbit[n]) ? 1 : 0)) {
            *certainly_not_der = 1;
        }
        CHECK(nlen[n] + nzlen[n] <= 300);

        nlenlen[n] = nlen[n] + nzlen[n] < 128 ? 0 : (nlen[n] + nzlen[n] < 256 ? 1 : 2);
        if (!der) {

            int add = secp256k1_rand_int(127 - nlenlen[n]) * secp256k1_rand_int(16) * secp256k1_rand_int(16) / 256;
            nlenlen[n] += add;
            if (add != 0) {
                *certainly_not_der = 1;
            }
        }
        CHECK(nlen[n] + nzlen[n] + nlenlen[n] <= 427);
    }


    tlen = 2 + nlenlen[0] + nlen[0] + nzlen[0] + 2 + nlenlen[1] + nlen[1] + nzlen[1];
    CHECK(tlen <= 856);


    elen = (der || indet) ? 0 : secp256k1_rand_int(980 - tlen) * secp256k1_rand_int(8) / 8;
    if (elen != 0) {
        *certainly_not_der = 1;
    }
    tlen += elen;
    CHECK(tlen <= 980);


    glen = der ? 0 : secp256k1_rand_int(990 - tlen) * secp256k1_rand_int(8) / 8;
    if (glen != 0) {
        *certainly_not_der = 1;
    }
    CHECK(tlen + glen <= 990);


    sig[(*len)++] = 0x30;
    if (indet) {

        sig[(*len)++] = 0x80;
        *certainly_not_der = 1;
    } else {
        int tlenlen = tlen < 128 ? 0 : (tlen < 256 ? 1 : 2);
        if (!der) {
            int add = secp256k1_rand_int(127 - tlenlen) * secp256k1_rand_int(16) * secp256k1_rand_int(16) / 256;
            tlenlen += add;
            if (add != 0) {
                *certainly_not_der = 1;
            }
        }
        if (tlenlen == 0) {

            sig[(*len)++] = tlen;
        } else {

            sig[(*len)++] = 128 + tlenlen;
            assign_big_endian(sig + *len, tlenlen, tlen);
            *len += tlenlen;
        }
        tlen += tlenlen;
    }
    tlen += 2;
    CHECK(tlen + glen <= 1119);

    for (n = 0; n < 2; n++) {

        sig[(*len)++] = 0x02;
        if (nlenlen[n] == 0) {

            sig[(*len)++] = nlen[n] + nzlen[n];
        } else {

            sig[(*len)++] = 128 + nlenlen[n];
            assign_big_endian(sig + *len, nlenlen[n], nlen[n] + nzlen[n]);
            *len += nlenlen[n];
        }

        while (nzlen[n] > 0) {
            sig[(*len)++] = 0x00;
            nzlen[n]--;
        }
        if (nlen[n] == 32 && !nlow[n]) {

            int i;
            for (i = 0; i < 16; i++) {
                sig[(*len)++] = 0xFF;
            }
            nlen[n] -= 16;
        }

        if (nlen[n] > 0) {
            sig[(*len)++] = nhbyte[n];
            nlen[n]--;
        }

        secp256k1_rand_bytes_test(sig + *len, nlen[n]);
        *len += nlen[n];
        nlen[n] = 0;
    }


    secp256k1_rand_bytes_test(sig + *len, elen);
    *len += elen;


    if (indet) {
        sig[(*len)++] = 0;
        sig[(*len)++] = 0;
        tlen += 2;
    }
    CHECK(tlen + glen <= 1121);


    secp256k1_rand_bytes_test(sig + *len, glen);
    *len += glen;
    tlen += glen;
    CHECK(tlen <= 1121);
    CHECK(tlen == *len);
}
