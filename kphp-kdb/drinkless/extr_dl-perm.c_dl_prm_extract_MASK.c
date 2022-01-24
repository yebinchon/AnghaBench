#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dl_prm_ptr ;
struct TYPE_8__ {int b; int a; int len; struct TYPE_8__* r; struct TYPE_8__* p; struct TYPE_8__* l; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3 (dl_prm_ptr v, dl_prm_ptr *a, dl_prm_ptr *b, dl_prm_ptr *m, int x) {
  FUNC1 (v != NULL);

  dl_prm_ptr pa = NULL, pb = NULL;

  while (v != NULL) {
//    fprintf (stderr, "v = %p\n", v);
    int xn = FUNC0(v->l);
    if (x < xn) {
      v->p = pb;
      pb = v;

      *b = v;
      b = &v->l;
      v = v->l;
    } else {
      x -= xn;
      if (x < v->b - v->a) {
        //found
        *a = v->l;
        if (*a) {
          (*a)->p = pa;
        }

        *b = v->r;
        if (*b) {
          (*b)->p = pb;
        }

        *m = v;
        v->l = v->r = v->p = NULL;
        v->len = v->b - v->a;

        FUNC2 (pa);
        FUNC2 (pb);
        return;
      }
      x -= v->b - v->a;

      v->p = pa;
      pa = v;

      *a = v;
      a = &v->r;
      v = v->r;
    }

  }
  FUNC1 (0);
}