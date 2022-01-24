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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
struct TYPE_4__ {int num_bytes; int num_words; int /*<<< orphan*/  num_n_bits; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*,TYPE_1__*) ; 
 int uECC_MAX_WORDS ; 
 scalar_t__ uECC_RNG_MAX_TRIES ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__*) ; 

int FUNC5(uint8_t *public_key,
                  uint8_t *private_key,
                  uECC_Curve curve) {
#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    uECC_word_t *_private = (uECC_word_t *)private_key;
    uECC_word_t *_public = (uECC_word_t *)public_key;
#else
    uECC_word_t _private[uECC_MAX_WORDS];
    uECC_word_t _public[uECC_MAX_WORDS * 2];
#endif
    uECC_word_t tries;

    for (tries = 0; tries < uECC_RNG_MAX_TRIES; ++tries) {
        if (!FUNC3(_private, curve->n, FUNC1(curve->num_n_bits))) {
            return 0;
        }

        if (FUNC2(_public, _private, curve)) {
#if uECC_VLI_NATIVE_LITTLE_ENDIAN == 0
            FUNC4(private_key, FUNC0(curve->num_n_bits), _private);
            FUNC4(public_key, curve->num_bytes, _public);
            FUNC4(
                public_key + curve->num_bytes, curve->num_bytes, _public + curve->num_words);
#endif
            return 1;
        }
    }
    return 0;
}