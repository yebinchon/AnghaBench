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
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 void* FUNC3 (int) ; 

void *FUNC4 (void *src, int mask_old, int mask_new, int size_of_element) {
  if (!mask_new) {
    if (src) { FUNC2 (src, FUNC1 (mask_old) * size_of_element); }
    return 0;
  }
  void *dst = FUNC3 ( FUNC1 (mask_new) * size_of_element);
  if (!dst) { return 0; }
  if (src) {
    int psrc = 0, pdst = 0, u = mask_old | mask_new;
    while (u) {
      int x;
      u ^= x = u & -u; /* x := mask with lowest one bit */
      if (x & mask_new) {
        if (x & mask_old) {
          FUNC0 (dst + pdst, src + psrc, size_of_element);
          psrc += size_of_element;
        }
        pdst += size_of_element;
      } else {
        psrc += size_of_element;
      }
    }
    FUNC2 (src, psrc);
  }
  return dst;
}