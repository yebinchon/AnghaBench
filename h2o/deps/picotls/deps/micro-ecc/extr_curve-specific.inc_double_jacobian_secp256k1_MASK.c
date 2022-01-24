#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int num_words_secp256k1 ; 
 int uECC_WORD_BITS ; 
 int FUNC0 (int*,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 scalar_t__ FUNC7 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uECC_word_t * X1,
                                      uECC_word_t * Y1,
                                      uECC_word_t * Z1,
                                      uECC_Curve curve) {
    /* t1 = X, t2 = Y, t3 = Z */
    uECC_word_t t4[num_words_secp256k1];
    uECC_word_t t5[num_words_secp256k1];
    
    if (FUNC1(Z1, num_words_secp256k1)) {
        return;
    }
    
    FUNC4(t5, Y1, curve);   /* t5 = y1^2 */
    FUNC3(t4, X1, t5, curve); /* t4 = x1*y1^2 = A */
    FUNC4(X1, X1, curve);   /* t1 = x1^2 */
    FUNC4(t5, t5, curve);   /* t5 = y1^4 */
    FUNC3(Z1, Y1, Z1, curve); /* t3 = y1*z1 = z3 */
    
    FUNC2(Y1, X1, X1, curve->p, num_words_secp256k1); /* t2 = 2*x1^2 */
    FUNC2(Y1, Y1, X1, curve->p, num_words_secp256k1); /* t2 = 3*x1^2 */
    if (FUNC7(Y1, 0)) {
        uECC_word_t carry = FUNC0(Y1, Y1, curve->p, num_words_secp256k1);
        FUNC6(Y1, num_words_secp256k1);
        Y1[num_words_secp256k1 - 1] |= carry << (uECC_WORD_BITS - 1);
    } else {
        FUNC6(Y1, num_words_secp256k1);
    }
    /* t2 = 3/2*(x1^2) = B */
    
    FUNC4(X1, Y1, curve);                     /* t1 = B^2 */
    FUNC5(X1, X1, t4, curve->p, num_words_secp256k1); /* t1 = B^2 - A */
    FUNC5(X1, X1, t4, curve->p, num_words_secp256k1); /* t1 = B^2 - 2A = x3 */
    
    FUNC5(t4, t4, X1, curve->p, num_words_secp256k1); /* t4 = A - x3 */
    FUNC3(Y1, Y1, t4, curve);                   /* t2 = B * (A - x3) */
    FUNC5(Y1, Y1, t5, curve->p, num_words_secp256k1); /* t2 = B * (A - x3) - y1^4 = y3 */
}