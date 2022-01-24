#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int i; int k; int len; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ bcode_iterator ;
typedef  int /*<<< orphan*/ * bcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3 (bcode_iterator *it, bcode x, int tot_items, int len, int nr) {
  it->ptr = x;
  it->i = -1;

  it->k = 0;
  int p = 1;

  while (p <= tot_items) {
    p += p;
    it->k++;
  }

  if (it->k > 0) {
    it->len = 8 * len / it->k;
  } else {
    FUNC0 (x == NULL);
    it->len = 0;
  }

  int n = it->len;
  int l = -1, r = n;

  while (l + 1 < r) {
    int c = (l + r) >> 1;
    if (FUNC1 (it, c) <= nr) {
      r = c;
    } else {
      l = c;
    }
  }
  it->i = r - 1;
  FUNC2 (it);
}