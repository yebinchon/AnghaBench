
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uECC_Curve_t {int dummy; } ;
typedef int public ;
typedef int decompressed_point ;
typedef int compressed_point ;


 int fflush (int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int printf (char*,...) ;
 int stdout ;
 int uECC_TEST_NUMBER_OF_ITERATIONS ;
 int uECC_compress (int *,int *,struct uECC_Curve_t const*) ;
 int uECC_decompress (int *,int *,struct uECC_Curve_t const*) ;
 int uECC_make_key (int *,int *,struct uECC_Curve_t const*) ;
 struct uECC_Curve_t* uECC_secp160r1 () ;
 struct uECC_Curve_t* uECC_secp192r1 () ;
 struct uECC_Curve_t* uECC_secp224r1 () ;
 struct uECC_Curve_t* uECC_secp256k1 () ;
 struct uECC_Curve_t* uECC_secp256r1 () ;
 int vli_print (char*,int *,int) ;

int main() {
    uint8_t public[64];
    uint8_t private[32];
    uint8_t compressed_point[33];
    uint8_t decompressed_point[64];

    int i;
    int c;

    const struct uECC_Curve_t * curves[5];
    int num_curves = 0;
    printf("Testing compression and decompression of %d random EC points\n",
           uECC_TEST_NUMBER_OF_ITERATIONS);

    for (c = 0; c < num_curves; ++c) {
        for (i = 0; i < uECC_TEST_NUMBER_OF_ITERATIONS; ++i) {
            printf(".");
            fflush(stdout);

            memset(public, 0, sizeof(public));
            memset(decompressed_point, 0, sizeof(decompressed_point));


            if (!uECC_make_key(public, private, curves[c])) {
                printf("uECC_make_key() failed\n");
                continue;
            }


            uECC_compress(public, compressed_point, curves[c]);
            uECC_decompress(compressed_point, decompressed_point, curves[c]);

            if (memcmp(public, decompressed_point, sizeof(public)) != 0) {
                printf("Original and decompressed points are not identical!\n");
                vli_print("Original point =     ", public, sizeof(public));
                vli_print("Compressed point =   ", compressed_point, sizeof(compressed_point));
                vli_print("Decompressed point = ", decompressed_point, sizeof(decompressed_point));
            }
        }
        printf("\n");
    }

    return 0;
}
