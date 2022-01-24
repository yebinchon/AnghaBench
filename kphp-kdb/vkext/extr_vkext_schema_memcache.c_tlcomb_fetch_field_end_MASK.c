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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int) ; 

void *FUNC3 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  char *id = *(IP ++);
  int num = (long)*(IP ++);
  //assert (*arr);
  if (!*arr) {
    FUNC0 (*arr);
    FUNC1 (*arr);
  }
  FUNC2 ((arr - 1), *arr, id, num);
  arr --;
  TLUNI_NEXT;
}