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

int FUNC1 (const char *text) {
  int a = *(unsigned char *)text;
  if (a <= 253) {
    return a;
  }
  FUNC0 (a == 254);
  return (*(int *)text) & 0x00ffffff;
}