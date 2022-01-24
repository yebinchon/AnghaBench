#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uECC_word_t ;
typedef  int /*<<< orphan*/  uECC_Curve ;
typedef  int bitcount_t ;
struct TYPE_3__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 TYPE_1__ curve_secp224r1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int num_words_secp224r1 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(uECC_word_t *a, uECC_Curve curve) {
    bitcount_t i;
    uECC_word_t e1[num_words_secp224r1];
    uECC_word_t f1[num_words_secp224r1];
    uECC_word_t d0[num_words_secp224r1];
    uECC_word_t e0[num_words_secp224r1];
    uECC_word_t f0[num_words_secp224r1];
    uECC_word_t d1[num_words_secp224r1];

    /* s = a; using constant instead of random value */
    FUNC0(d0, e0, f0, a, a);           /* RP (d0, e0, f0, c, s) */
    FUNC1(d1, e1, f1, d0, e0, f0);     /* RS (d1, e1, f1, d0, e0, f0) */
    for (i = 1; i <= 95; i++) {
        FUNC5(d0, d1, num_words_secp224r1);          /* d0 <-- d1 */
        FUNC5(e0, e1, num_words_secp224r1);          /* e0 <-- e1 */
        FUNC5(f0, f1, num_words_secp224r1);          /* f0 <-- f1 */
        FUNC1(d1, e1, f1, d0, e0, f0); /* RS (d1, e1, f1, d0, e0, f0) */
        if (FUNC2(d1, num_words_secp224r1)) {     /* if d1 == 0 */
                break;
        }
    }
    FUNC3(f1, e0, curve_secp224r1.p, num_words_secp224r1); /* f1 <-- 1 / e0 */
    FUNC4(a, d0, f1, &curve_secp224r1);              /* a  <-- d0 / e0 */
}