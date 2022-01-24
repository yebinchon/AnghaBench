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
typedef  void tl_tree ;

/* Variables and functions */
 int /*<<< orphan*/  TLUNI_NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (void*) ; 

void *FUNC3 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int p = (long)*(IP ++);
//  *(Data ++) = ((void *)vars[p]) + 2 * (long) *(IP ++);
//  fprintf (stderr, "vars[p] = %p\n", vars[p]);
  *(Data ++) = FUNC1 (FUNC2 (vars[p]) + (long) *(IP ++));
#ifdef VLOG
  fprintf (stderr, "Push nat var. Data = %lld\n", var_nat_const_to_int (*(Data - 1)));
#endif
  TLUNI_NEXT;
}