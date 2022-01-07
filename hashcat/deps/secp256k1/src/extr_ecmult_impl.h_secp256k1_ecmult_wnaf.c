
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wnaf ;
typedef int secp256k1_scalar ;


 int CHECK (int) ;
 int VERIFY_CHECK (int) ;
 int memset (int*,int ,int) ;
 unsigned int secp256k1_scalar_get_bits (int *,int,int) ;
 int secp256k1_scalar_get_bits_var (int *,int,int) ;
 int secp256k1_scalar_negate (int *,int *) ;

__attribute__((used)) static int secp256k1_ecmult_wnaf(int *wnaf, int len, const secp256k1_scalar *a, int w) {
    secp256k1_scalar s;
    int last_set_bit = -1;
    int bit = 0;
    int sign = 1;
    int carry = 0;

    VERIFY_CHECK(wnaf != ((void*)0));
    VERIFY_CHECK(0 <= len && len <= 256);
    VERIFY_CHECK(a != ((void*)0));
    VERIFY_CHECK(2 <= w && w <= 31);

    memset(wnaf, 0, len * sizeof(wnaf[0]));

    s = *a;
    if (secp256k1_scalar_get_bits(&s, 255, 1)) {
        secp256k1_scalar_negate(&s, &s);
        sign = -1;
    }

    while (bit < len) {
        int now;
        int word;
        if (secp256k1_scalar_get_bits(&s, bit, 1) == (unsigned int)carry) {
            bit++;
            continue;
        }

        now = w;
        if (now > len - bit) {
            now = len - bit;
        }

        word = secp256k1_scalar_get_bits_var(&s, bit, now) + carry;

        carry = (word >> (w-1)) & 1;
        word -= carry << w;

        wnaf[bit] = sign * word;
        last_set_bit = bit;

        bit += now;
    }






    return last_set_bit + 1;
}
