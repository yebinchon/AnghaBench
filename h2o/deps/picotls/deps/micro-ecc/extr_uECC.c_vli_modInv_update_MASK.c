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
typedef  int wordcount_t ;
typedef  scalar_t__ uECC_word_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ HIGH_BIT_SET ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 

__attribute__((used)) static void FUNC3(uECC_word_t *uv,
                              const uECC_word_t *mod,
                              wordcount_t num_words) {
    uECC_word_t carry = 0;
    if (!FUNC0(uv)) {
        carry = FUNC1(uv, uv, mod, num_words);
    }
    FUNC2(uv, num_words);
    if (carry) {
        uv[num_words - 1] |= HIGH_BIT_SET;
    }
}