
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint128_t ;


 int f80_rounding_mode ;




__attribute__((used)) static uint128_t u128_shift_right_round(uint128_t i, int shift, int sign) {

    if (shift == 0)
        return i;
    if (shift > 127)
        return 0;



    int guard = (i >> (shift - 1)) & 1;

    uint64_t rest = i & ~(-1ul << (shift - 1));

    i >>= shift;
    switch (f80_rounding_mode) {
        case 128:
            if (!sign)
                i++;
            break;
        case 130:
            if (sign)
                i++;
            break;
        case 129:

            if (guard) {
                if (rest != 0)
                    i++;
                else if (i & 1)
                    i++;
            }
            break;
    }
    return i;
}
