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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  negative_1305 ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint32_t x[17])
{
  uint32_t xsub[17];
  size_t i;

  for (i = 0; i < 17; i++)
    xsub[i] = x[i];

  FUNC1(xsub, negative_1305);

  /* If x - (2 ** 130 - 5) is negative, then
   * x didn't need reduction: we discard the results.
   * Do this in a side-channel silent way. */
  uint32_t negative_mask = FUNC0(xsub[16] & 0x80, 0x80);
  uint32_t positive_mask = negative_mask ^ 0xffffffff;

  for (i = 0; i < 17; i++)
    x[i] = (x[i] & negative_mask) | (xsub[i] & positive_mask);
}