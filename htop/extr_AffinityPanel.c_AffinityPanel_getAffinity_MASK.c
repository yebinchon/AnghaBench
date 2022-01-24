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
typedef  int /*<<< orphan*/  ProcessList ;
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  CheckItem ;
typedef  int /*<<< orphan*/  Affinity ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

Affinity* FUNC5(Panel* this, ProcessList* pl) {
   Affinity* affinity = FUNC1(pl);
   int size = FUNC4(this);
   for (int i = 0; i < size; i++) {
      if (FUNC2((CheckItem*)FUNC3(this, i)))
         FUNC0(affinity, i);
   }
   return affinity;
}