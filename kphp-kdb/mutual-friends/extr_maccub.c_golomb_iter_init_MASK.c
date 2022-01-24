#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int a; int len; int k; int p; int m; int M; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ golomb_iterator ;
typedef  int /*<<< orphan*/ * golomb ;

/* Variables and functions */
 int LEN_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ cur_bit ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4 (golomb_iterator *it, golomb x, int tot_items, int len, int r) {
  it->ptr = x;

  if (x == NULL) {
    it->a = 0;
    it->len = 0;
    return;
  }

  it->k = LEN_BITS;
  it->p = 1 << (LEN_BITS + 1);


  it->m = ((int) *(it->ptr)++ << 24) + (1 << 23);

  int tmp = 0;
  while (it->k >= 0) {
    if (cur_bit) { tmp += (1 << it->k); }
    FUNC3 ();
    it->k--;
  }

  it->len = tmp;

  FUNC0 (it->len >= 0);

  it->a = tot_items + it->len + 1;
  it->M = FUNC1 (tot_items + it->len, it->len);

  it->k = 0, it->p = 1;
  while (it->M >= it->p) {
    it->p <<= 1;
    it->k++;
  }
  it->p -= it->M;

  FUNC2 (it);

  while (it->a > r) {
    FUNC2 (it);
  }
}