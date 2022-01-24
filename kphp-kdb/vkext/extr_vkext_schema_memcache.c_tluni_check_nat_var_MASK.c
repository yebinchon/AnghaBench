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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  TLUNI_NEXT ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (void**) ; 

void *FUNC3 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  long p = (long)*(IP ++);
  //void *x = *(--Data) + 2 * (long)*(IP ++);
  void *x = FUNC1 (FUNC2 (--Data) + (long)*(IP ++));
  if (vars[p] != x) {
    FUNC0 (x);
    return 0;
  }
  FUNC0 (x);
  TLUNI_NEXT;
}