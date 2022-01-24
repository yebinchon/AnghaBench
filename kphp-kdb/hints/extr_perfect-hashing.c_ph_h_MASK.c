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
struct TYPE_3__ {int* sums; int* used; int /*<<< orphan*/  code; scalar_t__ d; int /*<<< orphan*/  mul1; int /*<<< orphan*/  mul0; } ;
typedef  TYPE_1__ perfect_hash ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (long long,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3 (perfect_hash *h, long long s) {
  int h0 = FUNC2 (s, h->mul0, h->d),
      h1 = FUNC2 (s, h->mul1, h->d);

  h1 += h->d;

  int i;
  if (FUNC1 (h->code, h0) ^ FUNC1 (h->code, h1)) {
    i = h1;
  } else {
    i = h0;
  }

//  int tt = i;

  int res = 0;//, j;
  res = h->sums[i >> 6];

  int left = (i & 63);
  i = (i >> 5) & -2;
  if (left >= 32) {
    res += FUNC0 (h->used[i++]);
    left -= 32;
  }

  res += FUNC0 (h->used[i] & ((1 << left) - 1));
/*
  int tres = 0;
  for (j = 0; j < tt; j++) {
    tres += get_bit (h->used, j);
  }
  fprintf (stderr, "%d : %d vs %d\n", tt, res, tres);
  assert (res == tres);
  */
  return res;
}