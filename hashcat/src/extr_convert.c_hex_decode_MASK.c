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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 

int FUNC1 (const u8 *in_buf, const int in_len, u8 *out_buf)
{
  for (int i = 0, j = 0; i < in_len; i += 2, j += 1)
  {
    out_buf[j] = FUNC0 (&in_buf[i]);
  }

  return in_len / 2;
}