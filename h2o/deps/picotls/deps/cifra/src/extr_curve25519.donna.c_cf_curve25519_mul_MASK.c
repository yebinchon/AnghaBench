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
typedef  int u8 ;
typedef  int /*<<< orphan*/  limb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(u8 out[32], const u8 scalar[32], const u8 point[32])
{
  limb bp[10], x[10], z[11], zmone[10];
  uint8_t e[32];
  int i;

  for (i = 0; i < 32; ++i) e[i] = scalar[i];
  e[0] &= 248;
  e[31] &= 127;
  e[31] |= 64;

  FUNC3(bp, point);
  FUNC0(x, z, e, bp);
  FUNC1(zmone, z);
  FUNC4(z, x, zmone);
  FUNC2(out, z);
}