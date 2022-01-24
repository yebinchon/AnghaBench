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
typedef  int /*<<< orphan*/  MainPanel ;
typedef  int /*<<< orphan*/  FunctionBar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(MainPanel* this, bool mode) {
   FunctionBar* bar = FUNC2(this);
   if (mode) {
      FUNC0(bar, FUNC1(5), "Sorted");
      FUNC0(bar, FUNC1(6), "Collap");
   } else {
      FUNC0(bar, FUNC1(5), "Tree  ");
      FUNC0(bar, FUNC1(6), "SortBy");
   }
}