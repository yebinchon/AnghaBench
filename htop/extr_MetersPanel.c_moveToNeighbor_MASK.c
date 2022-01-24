#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  super; int /*<<< orphan*/  meters; scalar_t__ moving; } ;
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ MetersPanel ;
typedef  int /*<<< orphan*/  Meter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline bool FUNC8(MetersPanel* this, MetersPanel* neighbor, int selected) {
   Panel* super = (Panel*) this;
   if (this->moving) {
      if (neighbor) {
         if (selected < FUNC6(this->meters)) {
            FUNC1(this, false);

            Meter* meter = (Meter*) FUNC7(this->meters, selected);
            FUNC3(super, selected);
            FUNC5(neighbor->meters, selected, meter);
            FUNC2(&(neighbor->super), selected, (Object*) FUNC0(meter, false));
            FUNC4(&(neighbor->super), selected);

            FUNC1(neighbor, true);
            return true;
         }
      }
   }
   return false;
}