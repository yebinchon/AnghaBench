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
struct fcb_table_entry {int i; int p; } ;
typedef  int /*<<< orphan*/  T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fcb_table_entry* FUNC1 (int,int) ; 
 int /*<<< orphan*/  cmp_fcb_table_entry ; 
 int /*<<< orphan*/  FUNC2 (struct fcb_table_entry*) ; 
 unsigned int FUNC3 (unsigned int*,unsigned int) ; 
 unsigned int FUNC4 (int,int) ; 
 unsigned int FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fcb_table_entry*,int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int FUNC10 (int size, unsigned d) {
  int i, j;
  size += 4;
  d = FUNC7 (d);
  int n = size << 3;
  int r = (int) (FUNC8 (n) + 0.5);
//  vkprintf (3, "n = %d, r = %d\n", n, r);
  struct fcb_table_entry *T = FUNC1 (r, sizeof (struct fcb_table_entry));
  FUNC0 (T != NULL);
  T[0].i = 0;
  T[0].p = 1;
  for (i = 1; i < r; i++) {
    T[i].i = i;
    T[i].p = FUNC9 (T[i-1].p);
  }
  FUNC0 (FUNC9 (0x82608EDB) == 1);
  FUNC6 (T, r, sizeof (T[0]), cmp_fcb_table_entry);
  unsigned q = FUNC4 (0x82608EDB, r);

  unsigned A[32];
  for (i = 0; i < 32; i++) {
    A[i] = FUNC5 (q, i);
  }

  unsigned x = d;
  int max_j = n / r, res = -1;
  for (j = 0; j <= max_j; j++) {
    int a = -1, b = r;
    while (b - a > 1) {
      int c = ((a + b) >> 1);
      if (T[c].p <= x) { a = c; } else { b = c; }
    }
    if (a >= 0 && T[a].p == x) {
      res = T[a].i + r * j;
      break;
    }
    x = FUNC3 (A, x);
  }
  FUNC2 (T);
  return res;
}