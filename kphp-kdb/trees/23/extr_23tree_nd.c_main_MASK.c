#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int extra_words; } ;

/* Variables and functions */
 TYPE_1__ Root ; 
 int* arr ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int ld ; 
 int lp ; 
 int nd ; 
 int np ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int* FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

int FUNC11 (int argc, const char *argv[]) {
  int n, t, p, i, j;
  int counters[3], extra[4];
  int *tmp;
  if (argc >= 2 && !FUNC7 (argv[1], "-e")) {
    Root.extra_words = 1;
  }
  FUNC5 ("%d", &n);
  for (i = 0; i < n; i++) {
    FUNC5 ("%d", &t);
    switch (t) {
      case 1:
        FUNC5 ("%d", &p);
        if (!FUNC10 (&Root, p)) {
          extra[0] = p+3;
          FUNC9 (&Root, p, extra);
        }
        break;
      case 2:
        FUNC5 ("%d", &p);
        FUNC4 (FUNC10 (&Root, p)?"YES":"NO");
        break;
      case 3:
        FUNC5 ("%d", &p);
        tmp = FUNC6 (&Root, arr);
        p = tmp - arr;
        for (j = 0; j < p; j++)
          FUNC3 ("%d%c", arr[j], '\n');
        break;
      case 4:
        FUNC5 ("%d", &p);
        if (FUNC10 (&Root, p))
          FUNC8 (&Root, p);
        break;
    }
    //dump (T);
    if (FUNC0 (&Root) < 0) FUNC3 ("BAD TREE\n");
  }
  FUNC3 ("%d\n", FUNC0 (&Root));
  FUNC2 (&Root);
  tmp = FUNC6 (&Root, arr);
  p = tmp - arr;
  for (j = 0; j < p; j++)
    FUNC3 ("%d%c", arr[j], '\n');
  FUNC1 (&Root, counters);
  FUNC3 ("leaves allocated %d\nnodes allocated %d\nleaves freed %d\nnodes freed %d\nleaves current %d\nnodes current %d\n", lp, np, ld, nd, lp - ld, np - nd);
  FUNC3 ("leaves in tree %d\nnodes in tree %d\nnumbers in tree %d\n", counters[1], counters[2], counters[0]);
  return 0;
}