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
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  TLUNI_NEXT ; 
 scalar_t__ TLUNI_OK ; 
 scalar_t__ FUNC0 (void**,void**,int /*<<< orphan*/ **,struct tl_tree**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC6 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  void **newIP = *(IP ++);
  if (FUNC1 (arr) != IS_ARRAY) {
    return 0;
  }
  
  int multiplicity = FUNC4 (arr);
  FUNC2 (multiplicity);

  int i;
  for (i = 0; i < multiplicity; i++) {
    zval **w = FUNC5 (*arr, 0, i);
    #ifdef VLOG  
      fprintf (stderr, "field = %p\n", w ? *w : 0);
    #endif
    if (!w) { return 0; }
    *(++arr) = *w;
    if (FUNC0 (newIP, Data, arr, vars) != TLUNI_OK) {
      -- arr;
      return 0;
    }
    -- arr;
  }
  TLUNI_NEXT;
}