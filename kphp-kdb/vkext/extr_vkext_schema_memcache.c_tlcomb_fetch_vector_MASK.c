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
typedef  int /*<<< orphan*/  zval ;
struct tl_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLUNI_NEXT ; 
 scalar_t__ TLUNI_OK ; 
 scalar_t__ FUNC1 (void**,void**,int /*<<< orphan*/ **,struct tl_tree**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 () ; 

void *FUNC7 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int n = FUNC6 ();
  if (FUNC5 ()) { return 0; }
  FUNC0 (*arr);
  FUNC3 (*arr);
  void **newIP = *(IP ++);

#ifdef VLOG
  fprintf (stderr, "multiplicity %d\n", n);
#endif
  int i;
  for (i = 0; i < n; i++) {
    *(++arr) = 0;
    if (FUNC1 (newIP, Data, arr, vars) != TLUNI_OK) {
      -- arr;
      return 0;
    }
    FUNC2 (*(arr - 1), i, *arr);
    -- arr;
  }
  TLUNI_NEXT;
}