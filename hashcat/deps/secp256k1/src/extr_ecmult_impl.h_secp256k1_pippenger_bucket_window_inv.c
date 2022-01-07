
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;

__attribute__((used)) static size_t secp256k1_pippenger_bucket_window_inv(int bucket_window) {
    switch(bucket_window) {
        case 1: return 1;
        case 2: return 11;
        case 3: return 45;
        case 4: return 100;
        case 5: return 275;
        case 6: return 625;
        case 7: return 1850;
        case 8: return 3400;
        case 9: return 9630;
        case 10: return 17900;
        case 11: return 32800;
        case 128: return SIZE_MAX;

    }
    return 0;
}
