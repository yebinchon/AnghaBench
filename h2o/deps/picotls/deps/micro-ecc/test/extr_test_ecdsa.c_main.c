
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uECC_Curve_t {int dummy; } ;
typedef int hash ;


 int fflush (int ) ;
 int memcpy (int *,int *,int) ;
 int printf (char*) ;
 int stdout ;
 int uECC_make_key (int *,int *,struct uECC_Curve_t const*) ;
 struct uECC_Curve_t* uECC_secp160r1 () ;
 struct uECC_Curve_t* uECC_secp192r1 () ;
 struct uECC_Curve_t* uECC_secp224r1 () ;
 struct uECC_Curve_t* uECC_secp256k1 () ;
 struct uECC_Curve_t* uECC_secp256r1 () ;
 int uECC_sign (int *,int *,int,int *,struct uECC_Curve_t const*) ;
 int uECC_verify (int *,int *,int,int *,struct uECC_Curve_t const*) ;

int main() {
    int i, c;
    uint8_t private[32] = {0};
    uint8_t public[64] = {0};
    uint8_t hash[32] = {0};
    uint8_t sig[64] = {0};

    const struct uECC_Curve_t * curves[5];
    int num_curves = 0;
    printf("Testing 256 signatures\n");
    for (c = 0; c < num_curves; ++c) {
        for (i = 0; i < 256; ++i) {
            printf(".");
            fflush(stdout);

            if (!uECC_make_key(public, private, curves[c])) {
                printf("uECC_make_key() failed\n");
                return 1;
            }
            memcpy(hash, public, sizeof(hash));

            if (!uECC_sign(private, hash, sizeof(hash), sig, curves[c])) {
                printf("uECC_sign() failed\n");
                return 1;
            }

            if (!uECC_verify(public, hash, sizeof(hash), sig, curves[c])) {
                printf("uECC_verify() failed\n");
                return 1;
            }
        }
        printf("\n");
    }

    return 0;
}
