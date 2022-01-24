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
struct TYPE_4__ {int num_bytes; int num_words; } ;

/* Variables and functions */
 int uECC_MAX_WORDS ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC2(const uint8_t *public_key, uECC_Curve curve) {
#if uECC_VLI_NATIVE_LITTLE_ENDIAN
    uECC_word_t *_public = (uECC_word_t *)public_key;
#else
    uECC_word_t _public[uECC_MAX_WORDS * 2];
#endif

#if uECC_VLI_NATIVE_LITTLE_ENDIAN == 0
    FUNC1(_public, public_key, curve->num_bytes);
    FUNC1(
        _public + curve->num_words, public_key + curve->num_bytes, curve->num_bytes);
#endif
    return FUNC0(_public, curve);
}