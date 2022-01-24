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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t*,size_t*,size_t*,size_t const*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,size_t,size_t) ; 

__attribute__((used)) static uint32_t FUNC3(uint32_t w, const uint8_t *sbox)
{
  uint8_t a = FUNC0(w, 0),
          b = FUNC0(w, 1),
          c = FUNC0(w, 2),
          d = FUNC0(w, 3);
#if CF_CACHE_SIDE_CHANNEL_PROTECTION
  select_u8x4(&a, &b, &c, &d, sbox, 256);
#else
  a = sbox[a];
  b = sbox[b];
  c = sbox[c];
  d = sbox[d];
#endif
  return FUNC2(a, b, c, d);
}