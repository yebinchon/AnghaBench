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
typedef  TYPE_1__* dl_prm_ptr ;
struct TYPE_4__ {int b; int a; struct TYPE_4__* r; struct TYPE_4__* l; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 

int FUNC1 (dl_prm_ptr v, int *a, int n, int offset) {
  if (n == 0 || v == NULL) {
    return 0;
  }
  int ln = FUNC0 (v->l), res  = 0;
  if (offset < ln) {
    res = FUNC1 (v->l, a, n, offset);
    a += res;
    n -= res;
    offset = 0;
  } else {
    offset -= ln;
  }

  int vn = v->b - v->a;
  if (offset < v->b - v->a) {
    int x;
    for (x = v->a + offset; x < v->b && n > 0; x++) {
      *a++ = x;
      n--;
      res++;
    }
    offset = 0;
  } else {
    offset -= vn;
  }

  res += FUNC1 (v->r, a, n, offset);

  return res;
}