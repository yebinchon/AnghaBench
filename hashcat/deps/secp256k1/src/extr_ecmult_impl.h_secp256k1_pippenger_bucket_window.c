
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIPPENGER_MAX_BUCKET_WINDOW ;

__attribute__((used)) static int secp256k1_pippenger_bucket_window(size_t n) {
    if (n <= 1) {
        return 1;
    } else if (n <= 11) {
        return 2;
    } else if (n <= 45) {
        return 3;
    } else if (n <= 100) {
        return 4;
    } else if (n <= 275) {
        return 5;
    } else if (n <= 625) {
        return 6;
    } else if (n <= 1850) {
        return 7;
    } else if (n <= 3400) {
        return 8;
    } else if (n <= 9630) {
        return 9;
    } else if (n <= 17900) {
        return 10;
    } else if (n <= 32800) {
        return 11;
    } else {
        return PIPPENGER_MAX_BUCKET_WINDOW;
    }

}
