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

int *FUNC1 (int *ptr, int *data, int num) {
  int x = *(ptr++);
  FUNC0 (x <= num);
  int i;
  for (i = 0; i < x; i++) {
    data[i] += *(ptr++);
  }
  return ptr;
}