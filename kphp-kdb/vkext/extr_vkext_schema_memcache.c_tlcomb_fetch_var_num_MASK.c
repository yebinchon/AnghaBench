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
 int /*<<< orphan*/  FUNC0 (struct tl_tree*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLUNI_NEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct tl_tree* FUNC4 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 () ; 

void *FUNC7 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int x = FUNC6 ();
#ifdef VLOG
  fprintf (stderr, "%d\n", x);
#endif
  if (FUNC5 ()) {
    return 0;
  }
  FUNC1 (*arr);
  FUNC2 (*arr, x);
  int var_num = (long)*(IP ++);
  if (vars[var_num]) {
    FUNC0 (vars[var_num]);
  }
  vars[var_num] = FUNC4 (x);
  
  TLUNI_NEXT;
}