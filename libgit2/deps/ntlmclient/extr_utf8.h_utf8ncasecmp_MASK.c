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
typedef  scalar_t__ utf8_int32_t ;

/* Variables and functions */
 void* FUNC0 (void const*,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

int FUNC3(const void *src1, const void *src2, size_t n) {
  utf8_int32_t src1_cp, src2_cp, src1_orig_cp, src2_orig_cp;

  do {
    const unsigned char *const s1 = (const unsigned char *)src1;
    const unsigned char *const s2 = (const unsigned char *)src2;

    // first check that we have enough bytes left in n to contain an entire
    // codepoint
    if (0 == n) {
      return 0;
    }

    if ((1 == n) && ((0xc0 == (0xe0 & *s1)) || (0xc0 == (0xe0 & *s2)))) {
      const utf8_int32_t c1 = (0xe0 & *s1);
      const utf8_int32_t c2 = (0xe0 & *s2);

      if (c1 < c2) {
        return -1;
      } else if (c1 > c2) {
        return 1;
      } else {
        return 0;
      }
    }

    if ((2 >= n) && ((0xe0 == (0xf0 & *s1)) || (0xe0 == (0xf0 & *s2)))) {
      const utf8_int32_t c1 = (0xf0 & *s1);
      const utf8_int32_t c2 = (0xf0 & *s2);

      if (c1 < c2) {
        return -1;
      } else if (c1 > c2) {
        return 1;
      } else {
        return 0;
      }
    }

    if ((3 >= n) && ((0xf0 == (0xf8 & *s1)) || (0xf0 == (0xf8 & *s2)))) {
      const utf8_int32_t c1 = (0xf8 & *s1);
      const utf8_int32_t c2 = (0xf8 & *s2);

      if (c1 < c2) {
        return -1;
      } else if (c1 > c2) {
        return 1;
      } else {
        return 0;
      }
    }

    src1 = FUNC0(src1, &src1_cp);
    src2 = FUNC0(src2, &src2_cp);
    n -= FUNC1(src1_cp);

    // Take a copy of src1 & src2
    src1_orig_cp = src1_cp;
    src2_orig_cp = src2_cp;

    // Lower srcs if required
    src1_cp = FUNC2(src1_cp);
    src2_cp = FUNC2(src2_cp);

    // Check if the lowered codepoints match
    if ((0 == src1_orig_cp) && (0 == src2_orig_cp)) {
      return 0;
    } else if (src1_cp == src2_cp) {
      continue;
    }

    // If they don't match, then we return which of the original's are less
    if (src1_orig_cp < src2_orig_cp) {
      return -1;
    } else if (src1_orig_cp > src2_orig_cp) {
      return 1;
    }
  } while (0 < n);

  // both utf8 strings matched
  return 0;
}