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
typedef  int /*<<< orphan*/  Object_Compare ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(Object** array, int left, int right, Object_Compare compare) {
   if (left >= right)
      return;
   int pivotIndex = (left+right) / 2;
   int pivotNewIndex = FUNC0(array, left, right, pivotIndex, compare);
   FUNC1(array, left, pivotNewIndex - 1, compare);
   FUNC1(array, pivotNewIndex + 1, right, compare);
}