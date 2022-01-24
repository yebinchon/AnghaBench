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
 int /*<<< orphan*/  FUNC0 (unsigned int*,int) ; 
 unsigned int idx_crc32_complement ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,unsigned int const) ; 

int FUNC2 (void) {
  const unsigned computed_crc32 = ~idx_crc32_complement;
  unsigned idx_crc32;
  FUNC0 (&idx_crc32, 4);
  idx_crc32_complement = -1;
  if (idx_crc32 != computed_crc32) {
    FUNC1 (1, "crc32 read = %x, crc32 computed = %x\n", idx_crc32, computed_crc32);
    return -1;
  }
  return 0;
}