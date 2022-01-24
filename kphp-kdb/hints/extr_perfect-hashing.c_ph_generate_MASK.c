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
struct TYPE_3__ {int d; int* sums; int mul0; int mul1; int /*<<< orphan*/ * used; int /*<<< orphan*/ * code; } ;
typedef  TYPE_1__ perfect_hash ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int* di ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int* FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 
 int* ne ; 
 int FUNC11 (long long,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int* st ; 
 int* va ; 
 int* was ; 

void FUNC13 (perfect_hash *h, long long *s, int n) {
//  fprintf (stderr, "gen %d\n", n);

  FUNC1 (h->code == NULL);
  int d = n * (1 + 0.1);

  h->d = d;
  h->code = FUNC5 (FUNC7 (d));
  h->used = FUNC5 (FUNC9 (d));
  FUNC1 (sizeof (int) == 4);
  h->sums = FUNC5 (FUNC8 (d));

  int en = 2 * d, vn = d * 2;

  va = FUNC4 (sizeof (int) * en),
  ne = FUNC4 (sizeof (int) * en);
  st = FUNC4 (sizeof (int) * (vn)),
  was = FUNC4 (sizeof (int) * (vn)),
  di = FUNC4 (sizeof (int) * (vn));


  int bad = 0;

  int mul0 = 301, mul1 = 303;
  while (1) {
    FUNC10 (st, -1, sizeof (int) * (2 * d));

//    fprintf (stderr, "try = %d\n", bad);

    int i;
    en = 0;
    for (i = 0; i < n; i++) {
      int h0 = FUNC11 (s[i], mul0, d), h1 = FUNC11 (s[i], mul1, d) + d;

  //    fprintf (stderr, "%d->%d\n", h0, h1);

      ne[en] = st[h0];
      st[h0] = en;
      va[en++] = h1;

      ne[en] = st[h1];
      st[h1] = en;
      va[en++] = h0;
    }

    FUNC10 (was, 0, sizeof (int) * vn);
    int f = 1;
    for (i = 0; i < d && f; i++) {
      if (!was[i]) {
        f &= FUNC2 (i, -1, 0);
      }
    }


    if (f) {
      int un =0;
      for (i = 0; i < vn; i++) {
        if (was[i]) {
          if (di[i] % 4 == 1 || di[i] % 4 == 2) {
            FUNC12 (h->code, i);
          }
          if (di[i]) {
            FUNC12 (h->used, i);
            un++;
          }
        }
      }

//      fprintf (stderr, "used : %d / %d\n", un, n);
      int cur = 0;
      for (i = 0; i < vn; i++) {
        if ((i & 63) == 0) {
          h->sums[i >> 6] = cur;
        }
        if (FUNC6 (h->used, i)) {
          cur++;
        }
      }

      h->mul0 = mul0;
      h->mul1 = mul1;
      break;
    }
    bad++;

    mul0 = FUNC0(1, 1000000000);
    mul1 = FUNC0(1, 1000000000);
  }

  en = 2 * d;
  FUNC3 (va, sizeof (int) * en);
  FUNC3 (ne, sizeof (int) * en);
  FUNC3 (st, sizeof (int) * (vn));
  FUNC3 (was, sizeof (int) * (vn));
  FUNC3 (di, sizeof (int) * (vn));
//  fprintf (stderr, "return %d\n", bad);
}