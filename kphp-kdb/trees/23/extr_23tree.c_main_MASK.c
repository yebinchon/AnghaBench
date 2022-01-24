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

/* Variables and functions */
 int /*<<< orphan*/  T ; 
 int* arr ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ld ; 
 int lp ; 
 int nd ; 
 int np ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

int FUNC10 () {
  int n, t, p, i, j;
  int lc = 0, nc = 0 , cc = 0;
  int *tmp;
  FUNC5 ("%d", &n);
  for (i = 0; i < n; i++) {
    FUNC5 ("%d", &t);
    switch (t) {
      case 1:
        FUNC5 ("%d", &p);
        if (!FUNC9 (T, p))
          FUNC8 (&T, p);
        break;
      case 2:
        FUNC5 ("%d", &p);
        FUNC4 (FUNC9 (T, p)?"YES":"NO");
        break;
      case 3:
        FUNC5 ("%d", &p);
        tmp = FUNC6 (T, arr);
        p = tmp - arr;
        for (j = 0; j < p; j++)
          FUNC3 ("%d%c", arr[j], '\n');
        break;
      case 4:
        FUNC5 ("%d", &p);
        if (FUNC9 (T, p))
          FUNC7 (&T, p);
        break;
    }
    //dump (T);
    if (FUNC0 (T, -1000000000, 1000000000) < 0) FUNC3 ("BAD TREE\n");
  }
  FUNC3 ("%d\n", FUNC0 (T, -1000000000, 1000000000));
  FUNC2 (T);
  tmp = FUNC6 (T, arr);
  p = tmp - arr;
  for (j = 0; j < p; j++)
    FUNC3 ("%d%c", arr[j], '\n');
  FUNC1 (T, &lc, &nc, &cc);
  FUNC3 ("leaves allocated %d\nnodes allocated %d\nleaves freed %d\nnodes freed %d\nleaves current %d\nnodes current %d\n", lp, np, ld, nd, lp - ld, np - nd);
  FUNC3 ("leaves in tree %d\nnodes in tree %d\nnumbers in tree %d\n", lc, nc, cc);
}