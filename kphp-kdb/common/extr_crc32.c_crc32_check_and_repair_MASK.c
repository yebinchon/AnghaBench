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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (void*,int) ; 
 int FUNC2 (int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

int FUNC6 (void *input, int l, unsigned *input_crc32, int force_exit) {
  unsigned computed_crc32 = FUNC1 (input, l);
  const unsigned crc32_diff = computed_crc32 ^ (*input_crc32);
  if (!crc32_diff) {
    return 0;
  }
  int k = FUNC2 (l, crc32_diff);
  FUNC5 (3, "find_corrupted_bit returns %d.\n", k);
  int r = FUNC4 (input, l, k);
  FUNC5 (3, "repair_bit returns %d.\n", r);
  if (!r) {
    FUNC0 (FUNC1 (input, l) == *input_crc32);
    if (force_exit) {
      FUNC3 ("crc32_check_and_repair successfully repair one bit in %d bytes block.\n", l);
    }
    return 1;
  }
  if (!(crc32_diff & (crc32_diff - 1))) { /* crc32_diff is power of 2 */
    *input_crc32 = computed_crc32;
    if (force_exit) {
      FUNC3 ("crc32_check_and_repair successfully repair one bit in crc32 (%d bytes block).\n", l);
    }
    return 2;
  }
  FUNC0 (!force_exit);
  *input_crc32 = computed_crc32;
  return -1;
}