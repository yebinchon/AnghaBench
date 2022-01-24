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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC5(uECC_word_t *d2,
                                  uECC_word_t *e2,
                                  uECC_word_t *f2,
                                  const uECC_word_t *c,
                                  const uECC_word_t *d0,
                                  const uECC_word_t *e0,
                                  const uECC_word_t *d1,
                                  const uECC_word_t *e1) {
    uECC_word_t t1[num_words_secp224r1];
    uECC_word_t t2[num_words_secp224r1];

    FUNC1(t1, e0, e1, &curve_secp224r1); /* t1 <-- e0 * e1 */
    FUNC1(t1, t1, c, &curve_secp224r1);  /* t1 <-- t1 * c */
    /* t1 <-- p  - t1 */
    FUNC3(t1, curve_secp224r1.p, t1, curve_secp224r1.p, num_words_secp224r1);
    FUNC1(t2, d0, d1, &curve_secp224r1);                 /* t2 <-- d0 * d1 */
    FUNC0(t2, t2, t1, curve_secp224r1.p, num_words_secp224r1); /* t2 <-- t2 + t1 */
    FUNC1(t1, d0, e1, &curve_secp224r1);                 /* t1 <-- d0 * e1 */
    FUNC1(e2, d1, e0, &curve_secp224r1);                 /* e2 <-- d1 * e0 */
    FUNC0(e2, e2, t1, curve_secp224r1.p, num_words_secp224r1); /* e2 <-- e2 + t1 */
    FUNC2(f2, e2, &curve_secp224r1);                   /* f2 <-- e2^2 */
    FUNC1(f2, f2, c, &curve_secp224r1);                  /* f2 <-- f2 * c */
    /* f2 <-- p  - f2 */
    FUNC3(f2, curve_secp224r1.p, f2, curve_secp224r1.p, num_words_secp224r1);
    FUNC4(d2, t2, num_words_secp224r1); /* d2 <-- t2 */
}