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
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct bitwriter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bitwriter*,unsigned int,int) ; 

void FUNC4 (struct bitwriter *bw, unsigned int d) {
  FUNC0 (d > 0);
  int i, k = FUNC1 (d);
  d ^= 1U << k;
  for (i = 0; i < k; i++) {
    if (!bw->m) {
      FUNC2 (bw, 0);
      bw->m = 0x80;
    }
    *bw->ptr += bw->m;
    bw->m >>= 1;
  }
  if (!bw->m) {
    FUNC2 (bw, 0);
    bw->m = 0x80;
  }
  bw->m >>= 1;
  FUNC3 (bw, d, k);
}