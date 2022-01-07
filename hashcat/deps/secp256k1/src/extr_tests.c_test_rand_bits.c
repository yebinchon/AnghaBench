
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int mults ;


 int CHECK (int) ;
 int secp256k1_rand32 () ;
 int secp256k1_rand_bits (int) ;

void test_rand_bits(int rand32, int bits) {


    static const unsigned int rounds[7] = {1, 30, 73, 156, 322, 653, 1316};


    static const uint32_t mults[6] = {1, 3, 21, 289, 0x9999, 0x80402011};

    unsigned int usebits = bits > 6 ? 6 : bits;
    unsigned int maxshift = bits - usebits;


    uint64_t x[6][27] = {{0}};
    unsigned int i, shift, m;


    for (i = 0; i < rounds[usebits]; i++) {
        uint32_t r = (rand32 ? secp256k1_rand32() : secp256k1_rand_bits(bits));
        CHECK((((uint64_t)r) >> bits) == 0);
        for (m = 0; m < sizeof(mults) / sizeof(mults[0]); m++) {
            uint32_t rm = r * mults[m];
            for (shift = 0; shift <= maxshift; shift++) {
                x[m][shift] |= (((uint64_t)1) << ((rm >> shift) & ((1 << usebits) - 1)));
            }
        }
    }
    for (m = 0; m < sizeof(mults) / sizeof(mults[0]); m++) {
        for (shift = 0; shift <= maxshift; shift++) {

            CHECK(((~x[m][shift]) << (64 - (1 << usebits))) == 0);
        }
    }
}
