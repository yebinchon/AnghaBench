#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct uECC_Curve_t {int dummy; } ;
typedef  int /*<<< orphan*/  public ;
typedef  int /*<<< orphan*/  decompressed_point ;
typedef  int /*<<< orphan*/  compressed_point ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int uECC_TEST_NUMBER_OF_ITERATIONS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 struct uECC_Curve_t* FUNC7 () ; 
 struct uECC_Curve_t* FUNC8 () ; 
 struct uECC_Curve_t* FUNC9 () ; 
 struct uECC_Curve_t* FUNC10 () ; 
 struct uECC_Curve_t* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC13() {
    uint8_t public[64];
    uint8_t private[32];
    uint8_t compressed_point[33];
    uint8_t decompressed_point[64];

    int i;
    int c;
    
    const struct uECC_Curve_t * curves[5];
    int num_curves = 0;
#if uECC_SUPPORTS_secp160r1
    curves[num_curves++] = uECC_secp160r1();
#endif
#if uECC_SUPPORTS_secp192r1
    curves[num_curves++] = uECC_secp192r1();
#endif
#if uECC_SUPPORTS_secp224r1
    curves[num_curves++] = uECC_secp224r1();
#endif
#if uECC_SUPPORTS_secp256r1
    curves[num_curves++] = uECC_secp256r1();
#endif
#if uECC_SUPPORTS_secp256k1
    curves[num_curves++] = uECC_secp256k1();
#endif
    
    FUNC3("Testing compression and decompression of %d random EC points\n",
           uECC_TEST_NUMBER_OF_ITERATIONS);

    for (c = 0; c < num_curves; ++c) {
        for (i = 0; i < uECC_TEST_NUMBER_OF_ITERATIONS; ++i) {
            FUNC3(".");
            FUNC0(stdout);
            
            FUNC2(public, 0, sizeof(public));
            FUNC2(decompressed_point, 0, sizeof(decompressed_point));

            /* Generate arbitrary EC point (public) on Curve */
            if (!FUNC6(public, private, curves[c])) {
                FUNC3("uECC_make_key() failed\n");
                continue;
            }

            /* compress and decompress point */
            FUNC4(public, compressed_point, curves[c]);
            FUNC5(compressed_point, decompressed_point, curves[c]);

            if (FUNC1(public, decompressed_point, sizeof(public)) != 0) {
                FUNC3("Original and decompressed points are not identical!\n");
                FUNC12("Original point =     ", public, sizeof(public));
                FUNC12("Compressed point =   ", compressed_point, sizeof(compressed_point));
                FUNC12("Decompressed point = ", decompressed_point, sizeof(decompressed_point));
            }
        }
        FUNC3("\n");
    }

    return 0;
}