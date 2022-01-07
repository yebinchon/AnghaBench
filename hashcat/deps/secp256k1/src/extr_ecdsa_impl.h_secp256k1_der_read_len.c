
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERIFY_CHECK (int ) ;

__attribute__((used)) static int secp256k1_der_read_len(size_t *len, const unsigned char **sigp, const unsigned char *sigend) {
    size_t lenleft;
    unsigned char b1;
    VERIFY_CHECK(len != ((void*)0));
    *len = 0;
    if (*sigp >= sigend) {
        return 0;
    }
    b1 = *((*sigp)++);
    if (b1 == 0xFF) {

        return 0;
    }
    if ((b1 & 0x80) == 0) {

        *len = b1;
        return 1;
    }
    if (b1 == 0x80) {

        return 0;
    }

    lenleft = b1 & 0x7F;
    if (lenleft > (size_t)(sigend - *sigp)) {
        return 0;
    }
    if (**sigp == 0) {

        return 0;
    }
    if (lenleft > sizeof(size_t)) {



        return 0;
    }
    while (lenleft > 0) {
        *len = (*len << 8) | **sigp;
        (*sigp)++;
        lenleft--;
    }
    if (*len > (size_t)(sigend - *sigp)) {

        return 0;
    }
    if (*len < 128) {

        return 0;
    }
    return 1;
}
