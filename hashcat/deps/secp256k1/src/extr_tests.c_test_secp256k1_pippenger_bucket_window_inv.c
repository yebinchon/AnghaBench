
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int) ;
 int PIPPENGER_MAX_BUCKET_WINDOW ;
 int secp256k1_pippenger_bucket_window (scalar_t__) ;
 scalar_t__ secp256k1_pippenger_bucket_window_inv (int) ;

void test_secp256k1_pippenger_bucket_window_inv(void) {
    int i;

    CHECK(secp256k1_pippenger_bucket_window_inv(0) == 0);
    for(i = 1; i <= PIPPENGER_MAX_BUCKET_WINDOW; i++) {






        CHECK(secp256k1_pippenger_bucket_window(secp256k1_pippenger_bucket_window_inv(i)) == i);
        if (i != PIPPENGER_MAX_BUCKET_WINDOW) {
            CHECK(secp256k1_pippenger_bucket_window(secp256k1_pippenger_bucket_window_inv(i)+1) > i);
        }
    }
}
