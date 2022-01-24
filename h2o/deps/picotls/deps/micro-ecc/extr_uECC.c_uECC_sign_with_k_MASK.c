#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int wordcount_t ;
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
typedef  int bitcount_t ;
struct TYPE_6__ {int num_words; int num_n_bits; scalar_t__ num_bytes; int /*<<< orphan*/  n; int /*<<< orphan*/  G; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/  const*,unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/  g_rng_function ; 
 int FUNC5 (int*,int*,int*,TYPE_1__*) ; 
 int uECC_MAX_WORDS ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,scalar_t__,int*) ; 
 int FUNC15 (int*,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int*,int) ; 

__attribute__((used)) static int FUNC17(const uint8_t *private_key,
                            const uint8_t *message_hash,
                            unsigned hash_size,
                            uECC_word_t *k,
                            uint8_t *signature,
                            uECC_Curve curve) {

    uECC_word_t tmp[uECC_MAX_WORDS];
    uECC_word_t s[uECC_MAX_WORDS];
    uECC_word_t *k2[2] = {tmp, s};
#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    uECC_word_t *p = (uECC_word_t *)signature;
#else
    uECC_word_t p[uECC_MAX_WORDS * 2];
#endif
    uECC_word_t carry;
    wordcount_t num_words = curve->num_words;
    wordcount_t num_n_words = FUNC1(curve->num_n_bits);
    bitcount_t num_n_bits = curve->num_n_bits;

    /* Make sure 0 < k < curve_n */
    if (FUNC10(k, num_words) || FUNC9(curve->n, k, num_n_words) != 1) {
        return 0;
    }

    carry = FUNC5(k, tmp, s, curve);
    FUNC2(p, curve->G, k2[!carry], 0, num_n_bits + 1, curve);
    if (FUNC10(p, num_words)) {
        return 0;
    }

    /* If an RNG function was specified, get a random number
       to prevent side channel analysis of k. */
    if (!g_rng_function) {
        FUNC8(tmp, num_n_words);
        tmp[0] = 1;
    } else if (!FUNC6(tmp, curve->n, num_n_words)) {
        return 0;
    }

    /* Prevent side channel analysis of uECC_vli_modInv() to determine
       bits of k / the private key by premultiplying by a random number */
    FUNC13(k, k, tmp, curve->n, num_n_words); /* k' = rand * k */
    FUNC12(k, k, curve->n, num_n_words);       /* k = 1 / k' */
    FUNC13(k, k, tmp, curve->n, num_n_words); /* k = 1 / k */

#if uECC_VLI_NATIVE_LITTLE_ENDIAN == 0
    FUNC14(signature, curve->num_bytes, p); /* store r */
#endif

#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    bcopy((uint8_t *) tmp, private_key, BITS_TO_BYTES(curve->num_n_bits));
#else
    FUNC7(tmp, private_key, FUNC0(curve->num_n_bits)); /* tmp = d */
#endif

    s[num_n_words - 1] = 0;
    FUNC16(s, p, num_words);
    FUNC13(s, tmp, s, curve->n, num_n_words); /* s = r*d */

    FUNC4(tmp, message_hash, hash_size, curve);
    FUNC11(s, tmp, s, curve->n, num_n_words); /* s = e + r*d */
    FUNC13(s, s, k, curve->n, num_n_words);  /* s = (e + r*d) / k */
    if (FUNC15(s, num_n_words) > (bitcount_t)curve->num_bytes * 8) {
        return 0;
    }
#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    bcopy((uint8_t *) signature + curve->num_bytes, (uint8_t *) s, curve->num_bytes);
#else
    FUNC14(signature + curve->num_bytes, curve->num_bytes, s);
#endif    
    return 1;
}