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
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 struct uECC_Curve_t* FUNC4 () ; 
 struct uECC_Curve_t* FUNC5 () ; 
 struct uECC_Curve_t* FUNC6 () ; 
 struct uECC_Curve_t* FUNC7 () ; 
 struct uECC_Curve_t* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct uECC_Curve_t const*) ; 

int FUNC11() {
    int i, c;
    uint8_t private[32] = {0};
    uint8_t public[64] = {0};
    uint8_t hash[32] = {0};
    uint8_t sig[64] = {0};

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
    
    FUNC2("Testing 256 signatures\n");
    for (c = 0; c < num_curves; ++c) {
        for (i = 0; i < 256; ++i) {
            FUNC2(".");
            FUNC0(stdout);

            if (!FUNC3(public, private, curves[c])) {
                FUNC2("uECC_make_key() failed\n");
                return 1;
            }
            FUNC1(hash, public, sizeof(hash));
            
            if (!FUNC9(private, hash, sizeof(hash), sig, curves[c])) {
                FUNC2("uECC_sign() failed\n");
                return 1;
            }

            if (!FUNC10(public, hash, sizeof(hash), sig, curves[c])) {
                FUNC2("uECC_verify() failed\n");
                return 1;
            }
        }
        FUNC2("\n");
    }
    
    return 0;
}