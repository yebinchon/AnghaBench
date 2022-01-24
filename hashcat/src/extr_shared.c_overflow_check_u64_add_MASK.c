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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 

bool FUNC1 (const u64 a, const u64 b)
{
  const int a_msb = FUNC0 (a);
  const int b_msb = FUNC0 (b);

  return ((a_msb < 64) && (b_msb < 64));
}