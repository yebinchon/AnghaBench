#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uECC_word_t ;
struct TYPE_4__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 TYPE_1__ curve_secp224r1 ; 
 int num_words_secp224r1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(uECC_word_t *d1,
                                  uECC_word_t *e1,
                                  uECC_word_t *f1,
                                  const uECC_word_t *d0,
                                  const uECC_word_t *e0,
                                  const uECC_word_t *f0) {
    uECC_word_t t[num_words_secp224r1];

    FUNC2(t, d0, &curve_secp224r1);                    /* t <-- d0 ^ 2 */
    FUNC1(e1, d0, e0, &curve_secp224r1);                 /* e1 <-- d0 * e0 */
    FUNC0(d1, t, f0, curve_secp224r1.p, num_words_secp224r1);  /* d1 <-- t  + f0 */
    FUNC0(e1, e1, e1, curve_secp224r1.p, num_words_secp224r1); /* e1 <-- e1 + e1 */
    FUNC1(f1, t, f0, &curve_secp224r1);                  /* f1 <-- t  * f0 */
    FUNC0(f1, f1, f1, curve_secp224r1.p, num_words_secp224r1); /* f1 <-- f1 + f1 */
    FUNC0(f1, f1, f1, curve_secp224r1.p, num_words_secp224r1); /* f1 <-- f1 + f1 */
}