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
typedef  int /*<<< orphan*/  public_computed ;
typedef  int /*<<< orphan*/  public ;
typedef  int /*<<< orphan*/  private ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 struct uECC_Curve_t* FUNC6 () ; 
 struct uECC_Curve_t* FUNC7 () ; 
 struct uECC_Curve_t* FUNC8 () ; 
 struct uECC_Curve_t* FUNC9 () ; 
 struct uECC_Curve_t* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC12() {
    int i;
    int success;
    uint8_t private[32];
    uint8_t public[64];
    uint8_t public_computed[64];
    
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

    FUNC3("Testing 256 random private key pairs\n");
    for (c = 0; c < num_curves; ++c) {
        for (i = 0; i < 256; ++i) {
            FUNC3(".");
            FUNC0(stdout);
            
            FUNC2(public, 0, sizeof(public));
            FUNC2(public_computed, 0, sizeof(public_computed));
            
            if (!FUNC5(public, private, curves[c])) {
                FUNC3("uECC_make_key() failed\n");
                continue;
            }

            if (!FUNC4(private, public_computed, curves[c])) {
                FUNC3("uECC_compute_public_key() failed\n");
            }

            if (FUNC1(public, public_computed, sizeof(public)) != 0) {
                FUNC3("Computed and provided public keys are not identical!\n");
                FUNC11("Computed public key = ", public_computed, sizeof(public_computed));
                FUNC11("Provided public key = ", public, sizeof(public));
                FUNC11("Private key = ", private, sizeof(private));
            }
        }
        
        FUNC3("\n");
        FUNC3("Testing private key = 0\n");

        FUNC2(private, 0, sizeof(private));
        success = FUNC4(private, public_computed, curves[c]);
        if (success) {
            FUNC3("uECC_compute_public_key() should have failed\n");
        }
        FUNC3("\n");
    }
    
    return 0;
}