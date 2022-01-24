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
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  TLUNI_NEXT ; 
 scalar_t__ TLUNI_OK ; 
 scalar_t__ FUNC2 (void**,void**,int /*<<< orphan*/ **,struct tl_tree**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (void*) ; 

void *FUNC7 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  void **newIP = *(IP ++);
  int multiplicity = FUNC6 (*(--Data));
#ifdef VLOG
  fprintf (stderr, "multiplicity %d\n", multiplicity);
#endif
  FUNC1 (*Data);
  int i;
  FUNC0 (*arr);
  FUNC4 (*arr);
  for (i = 0; i < multiplicity; i++) {
    *(++arr) = 0;
    if (FUNC2 (newIP, Data, arr, vars) != TLUNI_OK) {
      -- arr;
      return 0;
    }
    FUNC3 (*(arr - 1), i, *arr);
    -- arr;
  }
  TLUNI_NEXT;
}