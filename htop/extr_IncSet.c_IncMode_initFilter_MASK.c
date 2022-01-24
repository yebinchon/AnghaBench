#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int isFilter; int /*<<< orphan*/  bar; } ;
typedef  TYPE_1__ IncMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filterEvents ; 
 int /*<<< orphan*/  filterFunctions ; 
 int /*<<< orphan*/  filterKeys ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(IncMode* filter) {
   FUNC1(filter, 0, sizeof(IncMode));
   filter->bar = FUNC0(filterFunctions, filterKeys, filterEvents);
   filter->isFilter = true;
}