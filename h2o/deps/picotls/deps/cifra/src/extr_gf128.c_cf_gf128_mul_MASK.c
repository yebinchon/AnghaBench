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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int* cf_gf128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int* const,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

void FUNC5(const cf_gf128 x, const cf_gf128 y, cf_gf128 out)
{
#if CF_TIME_SIDE_CHANNEL_PROTECTION
  cf_gf128 zero = { 0 };
#endif
 
  /* Z_0 = 0^128
   * V_0 = Y */ 
  cf_gf128 Z, V;
  FUNC2(Z, 0, sizeof Z);
  FUNC1(V, y, sizeof V);

  int i;
  for (i = 0; i < 128; i++)
  {
    uint32_t word = x[i >> 5];
    uint8_t bit = (word >> (31 - (i & 31))) & 1;

#if CF_TIME_SIDE_CHANNEL_PROTECTION
    select_xor128(Z, zero, V, bit);
#else
    if (bit)
      FUNC4(Z, V, 4);
#endif

    FUNC0(V, V);
  }

  FUNC1(out, Z, sizeof Z);
}