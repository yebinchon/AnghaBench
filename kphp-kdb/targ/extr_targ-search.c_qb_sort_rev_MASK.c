#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int max_res; int complexity; } ;
typedef  TYPE_1__ query_t ;

/* Variables and functions */

void FUNC0 (query_t **Qa, int b) {
  if (b <= 0) { return; }
  query_t *t;
  int i = 0, j = b;
  unsigned h = Qa[b >> 1]->max_res;
  int h2 = Qa[b >> 1]->complexity;
  do {
    while ((unsigned) Qa[i]->max_res > h || ((unsigned) Qa[i]->max_res == h && Qa[i]->complexity < h2)) {
      i++; 
    }
    while ((unsigned) Qa[j]->max_res < h || ((unsigned) Qa[j]->max_res == h && Qa[j]->complexity > h2)) { 
      j--; 
    }
    if (i <= j) {
      t = Qa[i];  Qa[i++] = Qa[j];  Qa[j--] = t;
    }
  } while (i <= j);
  FUNC0 (Qa, j);
  FUNC0 (Qa + i, b - i);
}