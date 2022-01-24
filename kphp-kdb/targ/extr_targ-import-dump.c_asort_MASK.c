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
 char** TL ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static void FUNC1 (int a, int b) {
  int i, j;
  char *h, *t;
  if (a >= b) { return; }
  i = a;  j = b;  h = TL[(a+b)>>1];
  do {
    while (FUNC0 (TL[i], h) < 0) { i++; }
    while (FUNC0 (TL[j], h) > 0) { j--; }
    if (i <= j) {
      t = TL[i];  TL[i++] = TL[j];  TL[j--] = t;
    }
  } while (i <= j);
  FUNC1 (a, j);
  FUNC1 (i, b);
}