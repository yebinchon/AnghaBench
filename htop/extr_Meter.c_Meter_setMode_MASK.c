#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int mode; int /*<<< orphan*/  h; int /*<<< orphan*/  draw; int /*<<< orphan*/ * drawData; } ;
struct TYPE_9__ {int /*<<< orphan*/  h; int /*<<< orphan*/  draw; } ;
typedef  TYPE_1__ MeterMode ;
typedef  TYPE_2__ Meter ;

/* Variables and functions */
 scalar_t__ CUSTOM_METERMODE ; 
 int LAST_METERMODE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__** Meter_modes ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(Meter* this, int modeIndex) {
   if (modeIndex > 0 && modeIndex == this->mode)
      return;
   if (!modeIndex)
      modeIndex = 1;
   FUNC4(modeIndex < LAST_METERMODE);
   if (FUNC0(this) == CUSTOM_METERMODE) {
      this->draw = FUNC1(this);
      if (FUNC3(this))
         FUNC2(this, modeIndex);
   } else {
      FUNC4(modeIndex >= 1);
      FUNC5(this->drawData);
      this->drawData = NULL;

      MeterMode* mode = Meter_modes[modeIndex];
      this->draw = mode->draw;
      this->h = mode->h;
   }
   this->mode = modeIndex;
}