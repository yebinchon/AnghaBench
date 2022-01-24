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
 int /*<<< orphan*/  TLUNI_NEXT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct tl_tree* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 

void *FUNC4 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int var_num = (long)*(IP ++);
  int a = FUNC3 (arr);
  if (vars[var_num]) {
    FUNC0 (vars[var_num]);
  }
  vars[var_num] = FUNC2 (a);
  FUNC1 (a);
  TLUNI_NEXT;
}