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
typedef  scalar_t__ (* Object_Compare ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int /*<<< orphan*/  comparisons ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int,int) ; 

__attribute__((used)) static int FUNC1(Object** array, int left, int right, int pivotIndex, Object_Compare compare) {
   void* pivotValue = array[pivotIndex];
   FUNC0(array, pivotIndex, right);
   int storeIndex = left;
   for (int i = left; i < right; i++) {
      comparisons++;
      if (compare(array[i], pivotValue) <= 0) {
         FUNC0(array, i, storeIndex);
         storeIndex++;
      }
   }
   FUNC0(array, storeIndex, right);
   return storeIndex;
}