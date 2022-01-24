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
typedef  TYPE_1__* dl_trp_node_ptr ;
struct TYPE_3__ {struct TYPE_3__* r; int /*<<< orphan*/  x; struct TYPE_3__* l; } ;

/* Variables and functions */

int FUNC0 (dl_trp_node_ptr v, int *a, int n) {
  if (v == NULL) {
    return 0;
  }
  int ln = FUNC0 (v->l, a, n);
  a += ln;
  n -= ln;
  if (n) {
    *a++ = v->x;
    n--;
    ln++;
  }
  ln += FUNC0 (v->r, a, n);
  return ln;
}