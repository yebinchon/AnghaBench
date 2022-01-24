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
struct TYPE_3__ {int n; int /*<<< orphan*/  new_v; int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ lookup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,size_t) ; 
 int* FUNC2 (size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6 (lookup *l, int *v, int mx) {
  int *st = v;
  int i;
  for (i = 0; i < l->n; i++) {
    if (FUNC3 (&l->new_v, l->x[i]) == NULL) {
      if (mx > 0) {
        *v++ = l->x[i];
        mx--;
      }
    }
  }

  int nn = FUNC5 (&l->new_v);
  if (nn == 0) {
    return v - st;
  }

  size_t ab_size = nn * sizeof (int);
  int *a = FUNC2 (ab_size);
  int *b = FUNC2 (ab_size);

  FUNC0 (FUNC4 (&l->new_v, a, b, nn) == nn);
  for (i = 0; i < nn; i++) {
    if (b[i] != -1) {
      if (mx > 0) {
        *v++ = a[i];
        mx--;
      }
    }
  }

  FUNC1 (a, ab_size);
  FUNC1 (b, ab_size);

  return v - st;
}