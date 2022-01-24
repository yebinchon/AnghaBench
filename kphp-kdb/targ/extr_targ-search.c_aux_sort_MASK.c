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
 int* aux_userlist ; 

void FUNC0 (long a, long b) {
  if (a >= b) {
    return;
  }
  int h = aux_userlist[(a + b) >> 1], t;
  long i = a, j = b;
  do {
    while (aux_userlist[i] < h) { i++; }
    while (aux_userlist[j] > h) { j--; }
    if (i <= j) {
      t = aux_userlist[i];
      aux_userlist[i++] = aux_userlist[j];
      aux_userlist[j--] = t;
    }
  } while (i <= j);
  FUNC0 (a, j);
  FUNC0 (i, b);
}