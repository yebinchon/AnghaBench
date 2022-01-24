#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int x; int y; } ;
typedef  TYPE_1__ shmap_pair_ll_int ;
typedef  int ll ;
struct TYPE_8__ {int y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  h ; 
 int FUNC2 (char*,...) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7 (void) {
  FUNC6 (&h);
//  shmap_ll_int_set_size (&h, 1);
  char op[50];
  int tn = 0;
  while (FUNC2 ("%s", op) == 1) {
    tn++;
    if (tn % 1000 == 0) {
      FUNC1 (stderr, "%d\n", tn);
    }
    ll x;
    int val;
    if (op[0] == 's') {
      FUNC2 ("%lld%d", &x, &val);

      shmap_pair_ll_int p;
      p.x = x;
      FUNC3 (&h, p)->y = val;
    } else if (op[0] == 'd') {
      FUNC2 ("%lld", &x);

/*      if (x == 7) {
        dump();
      }*/

      shmap_pair_ll_int p;
      p.x = x;
      FUNC4 (&h, p);
/*
      if (x == 7) {
        dump();
      }        */

    } else if (op[0] == 'g') {
      FUNC2 ("%lld%d", &x, &val);

      shmap_pair_ll_int p, *r;
      p.x = x;
      r = FUNC5 (&h, p);
      int cval = -1;
      if (r != NULL) {
        cval = r->y;
      }
      if (val != cval) {
        FUNC1 (stderr, "%d vs %d\n", val, cval);
      }
      FUNC0 (val == cval);
    }
//    fprintf (stderr, "%s %lld %d\n", op, x, val);
//    fflush (stdout);

    int cnt;
    FUNC2 ("%d", &cnt);
    //assert (cnt == h.used);
  }


/*  hmap_ll_int_init (&h);
  hmap_ll_int_set_size (&h, 20);

  hmap_ll_vptr_init (&vh);
  hmap_ll_vptr_set_size (&vh, 20);

  int i;
  for (i = 1; i < 300000; i++) {
    hmap_pair_ll_int p;
    p.x = i * 1000000000ll;
    p.y = i;
    hmap_ll_int_add (&h, p);
  }
  for (i = 1; i < 300000; i++) {
    hmap_pair_ll_int p, *r;
    p.x = i * 1000000000ll;
    r = hmap_ll_int_get (&h, p);
    assert (p.x == r->x);
    assert (p.x == r->y * 1000000000ll);
//    fprintf (stderr, "%lld(%lld->%d)\n", p.x, r->x, r->y);
  }*/

  return 0;
}