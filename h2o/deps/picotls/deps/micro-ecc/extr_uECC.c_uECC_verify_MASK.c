#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int wordcount_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
typedef  scalar_t__ bitcount_t ;
struct TYPE_8__ {int num_words; int num_bytes; size_t const* G; int /*<<< orphan*/  n; int /*<<< orphan*/  p; int /*<<< orphan*/  (* double_jacobian ) (size_t*,size_t*,size_t*,TYPE_1__*) ;int /*<<< orphan*/  num_n_bits; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t*,size_t*,size_t*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,size_t*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/  const*,unsigned int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t*,size_t*,size_t*,TYPE_1__*) ; 
 int uECC_MAX_WORDS ; 
 int /*<<< orphan*/  FUNC7 (size_t*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,size_t*,int) ; 
 scalar_t__ FUNC10 (size_t*,size_t*,int) ; 
 scalar_t__ FUNC11 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC12 (size_t*,size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (size_t*,size_t*,size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (size_t*,size_t*,size_t*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (size_t*,size_t*,size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC17 (size_t*,size_t const*,int) ; 
 int /*<<< orphan*/  FUNC18 (size_t*,size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (size_t*,scalar_t__) ; 

int FUNC20(const uint8_t *public_key,
                const uint8_t *message_hash,
                unsigned hash_size,
                const uint8_t *signature,
                uECC_Curve curve) {
    uECC_word_t u1[uECC_MAX_WORDS], u2[uECC_MAX_WORDS];
    uECC_word_t z[uECC_MAX_WORDS];
    uECC_word_t sum[uECC_MAX_WORDS * 2];
    uECC_word_t rx[uECC_MAX_WORDS];
    uECC_word_t ry[uECC_MAX_WORDS];
    uECC_word_t tx[uECC_MAX_WORDS];
    uECC_word_t ty[uECC_MAX_WORDS];
    uECC_word_t tz[uECC_MAX_WORDS];
    const uECC_word_t *points[4];
    const uECC_word_t *point;
    bitcount_t num_bits;
    bitcount_t i;
#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    uECC_word_t *_public = (uECC_word_t *)public_key;
#else
    uECC_word_t _public[uECC_MAX_WORDS * 2];
#endif    
    uECC_word_t r[uECC_MAX_WORDS], s[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;
    wordcount_t num_n_words = FUNC0(curve->num_n_bits);

    rx[num_n_words - 1] = 0;
    r[num_n_words - 1] = 0;
    s[num_n_words - 1] = 0;

#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    bcopy((uint8_t *) r, signature, curve->num_bytes);
    bcopy((uint8_t *) s, signature + curve->num_bytes, curve->num_bytes);
#else
    FUNC7(_public, public_key, curve->num_bytes);
    FUNC7(
        _public + num_words, public_key + curve->num_bytes, curve->num_bytes);
    FUNC7(r, signature, curve->num_bytes);
    FUNC7(s, signature + curve->num_bytes, curve->num_bytes);
#endif

    /* r, s must not be 0. */
    if (FUNC11(r, num_words) || FUNC11(s, num_words)) {
        return 0;
    }

    /* r, s must be < n. */
    if (FUNC9(curve->n, r, num_n_words) != 1 ||
            FUNC9(curve->n, s, num_n_words) != 1) {
        return 0;
    }

    /* Calculate u1 and u2. */
    FUNC12(z, s, curve->n, num_n_words); /* z = 1/s */
    u1[num_n_words - 1] = 0;
    FUNC4(u1, message_hash, hash_size, curve);
    FUNC13(u1, u1, z, curve->n, num_n_words); /* u1 = e/s */
    FUNC13(u2, r, z, curve->n, num_n_words); /* u2 = r/s */

    /* Calculate sum = G + Q. */
    FUNC17(sum, _public, num_words);
    FUNC17(sum + num_words, _public + num_words, num_words);
    FUNC17(tx, curve->G, num_words);
    FUNC17(ty, curve->G + num_words, num_words);
    FUNC15(z, sum, tx, curve->p, num_words); /* z = x2 - x1 */
    FUNC1(tx, ty, sum, sum + num_words, curve);
    FUNC12(z, z, curve->p, num_words); /* z = 1/z */
    FUNC2(sum, sum + num_words, z, curve);

    /* Use Shamir's trick to calculate u1*G + u2*Q */
    points[0] = 0;
    points[1] = curve->G;
    points[2] = _public;
    points[3] = sum;
    num_bits = FUNC5(FUNC16(u1, num_n_words),
                    FUNC16(u2, num_n_words));

    point = points[(!!FUNC19(u1, num_bits - 1)) |
                   ((!!FUNC19(u2, num_bits - 1)) << 1)];
    FUNC17(rx, point, num_words);
    FUNC17(ry, point + num_words, num_words);
    FUNC8(z, num_words);
    z[0] = 1;

    for (i = num_bits - 2; i >= 0; --i) {
        uECC_word_t index;
        curve->double_jacobian(rx, ry, z, curve);

        index = (!!FUNC19(u1, i)) | ((!!FUNC19(u2, i)) << 1);
        point = points[index];
        if (point) {
            FUNC17(tx, point, num_words);
            FUNC17(ty, point + num_words, num_words);
            FUNC2(tx, ty, z, curve);
            FUNC15(tz, rx, tx, curve->p, num_words); /* Z = x2 - x1 */
            FUNC1(tx, ty, rx, ry, curve);
            FUNC14(z, z, tz, curve);
        }
    }

    FUNC12(z, z, curve->p, num_words); /* Z = 1/Z */
    FUNC2(rx, ry, z, curve);

    /* v = x1 (mod n) */
    if (FUNC9(curve->n, rx, num_n_words) != 1) {
        FUNC18(rx, rx, curve->n, num_n_words);
    }

    /* Accept only if v == r. */
    return (int)(FUNC10(rx, r, num_words));
}