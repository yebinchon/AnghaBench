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
typedef  int /*<<< orphan*/  uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
struct TYPE_4__ {int num_bytes; int num_words; int /*<<< orphan*/  num_n_bits; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int uECC_MAX_WORDS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC7(const uint8_t *private_key, uint8_t *public_key, uECC_Curve curve) {
#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    uECC_word_t *_private = (uECC_word_t *)private_key;
    uECC_word_t *_public = (uECC_word_t *)public_key;
#else
    uECC_word_t _private[uECC_MAX_WORDS];
    uECC_word_t _public[uECC_MAX_WORDS * 2];
#endif

#if uECC_VLI_NATIVE_LITTLE_ENDIAN == 0
    FUNC3(_private, private_key, FUNC0(curve->num_n_bits));
#endif

    /* Make sure the private key is in the range [1, n-1]. */
    if (FUNC5(_private, FUNC1(curve->num_n_bits))) {
        return 0;
    }

    if (FUNC4(curve->n, _private, FUNC1(curve->num_n_bits)) != 1) {
        return 0;
    }

    /* Compute public key. */
    if (!FUNC2(_public, _private, curve)) {
        return 0;
    }

#if uECC_VLI_NATIVE_LITTLE_ENDIAN == 0
    FUNC6(public_key, curve->num_bytes, _public);
    FUNC6(
        public_key + curve->num_bytes, curve->num_bytes, _public + curve->num_words);
#endif
    return 1;
}