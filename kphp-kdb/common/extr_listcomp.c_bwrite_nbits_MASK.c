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
struct bitwriter {int m; int* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitwriter*,int /*<<< orphan*/ ) ; 

void FUNC2 (struct bitwriter *bw, unsigned int d, int n) {
  FUNC0 (!(n & -32));
  if (!n) { return; }
  unsigned int i;
  for (i = 1U << (n-1); i != 0; i >>= 1) {
    if (!bw->m) {
      FUNC1 (bw, 0);
      bw->m = 0x80;
    }
    if (d & i) {
      *bw->ptr += bw->m;
    }
    bw->m >>= 1;
  }
}