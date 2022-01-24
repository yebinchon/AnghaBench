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
typedef  int /*<<< orphan*/  secret1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 struct uECC_Curve_t* FUNC4 () ; 
 struct uECC_Curve_t* FUNC5 () ; 
 struct uECC_Curve_t* FUNC6 () ; 
 struct uECC_Curve_t* FUNC7 () ; 
 struct uECC_Curve_t* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

int FUNC11() {
    int i, c;
    uint8_t private1[32] = {0};
    uint8_t private2[32] = {0};
    uint8_t public1[64] = {0};
    uint8_t public2[64] = {0};
    uint8_t secret1[32] = {0};
    uint8_t secret2[32] = {0};
    
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
    
    FUNC2("Testing 256 random private key pairs\n");

    for (c = 0; c < num_curves; ++c) {
        for (i = 0; i < 256; ++i) {
            FUNC2(".");
            FUNC0(stdout);

            if (!FUNC3(public1, private1, curves[c]) ||
                !FUNC3(public2, private2, curves[c])) {
                FUNC2("uECC_make_key() failed\n");
                return 1;
            }

            if (!FUNC9(public2, private1, secret1, curves[c])) {
                FUNC2("shared_secret() failed (1)\n");
                return 1;
            }

            if (!FUNC9(public1, private2, secret2, curves[c])) {
                FUNC2("shared_secret() failed (2)\n");
                return 1;
            }
        
            if (FUNC1(secret1, secret2, sizeof(secret1)) != 0) {
                FUNC2("Shared secrets are not identical!\n");
                FUNC2("Private key 1 = ");
                FUNC10(private1, 32);
                FUNC2("\n");
                FUNC2("Private key 2 = ");
                FUNC10(private2, 32);
                FUNC2("\n");
                FUNC2("Public key 1 = ");
                FUNC10(public1, 64);
                FUNC2("\n");
                FUNC2("Public key 2 = ");
                FUNC10(public2, 64);
                FUNC2("\n");
                FUNC2("Shared secret 1 = ");
                FUNC10(secret1, 32);
                FUNC2("\n");
                FUNC2("Shared secret 2 = ");
                FUNC10(secret2, 32);
                FUNC2("\n");
            }
        }
        FUNC2("\n");
    }
    
    return 0;
}